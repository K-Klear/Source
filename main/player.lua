local HEROLEVELS = require("main/Actors/heroes/heroLevels")
local STATS = require("main.Actors.actorStats")
local HEROES = require("main/trackHeroes")

local M = {}
local HEROSPAWNTIME = 10
local timeToSpawn = 0

M.fear = {}
for x = 0, 7 do
	M.fear[x] = 0
end

M.fear.total = 0
M.fear.record = 0
M.fear.bonus = 0

M.attraction = 0
M.timeToHero = HEROSPAWNTIME

M.maxEssence = 100
M.essence = 1
M.rechargeRate = 0

local function callHero()
	local power = 0
	for key, val in ipairs(HEROES) do
		power = power + val.level
	end
	local level = 1
	for key, val in ipairs(HEROLEVELS) do
		if val.XP < M.attraction then
			level = key
		end
	end
	if HEROLEVELS[level].XP > (M.fear.total / 15) then
		if power > 4 * level then
			M.attraction = M.attraction / 2
		else
			table.insert(HEROES, {go = factory.create("#spawn_hero", vmath.vector3(-10, 880, 0.65), nil, STATS.hero), level = 1})
			if level > 1 then msg.post(HEROES[#HEROES].go, "levelUp", {level = level - 1}) end
			M.attraction = 0
		end
	end
end

function M.time()
	-- fear decay
	if M.fear.bonus > 0 then M.fear.bonus = M.fear.bonus - (M.fear.bonus * 0.1) end
	if M.fear.total > 0 then M.fear.total = M.fear.total - 1 end
	-- call for heroes
	M.attraction = M.attraction + 1 + (M.fear.total / 15)
	timeToSpawn = timeToSpawn + 1
	if timeToSpawn == HEROSPAWNTIME then
		callHero()
		timeToSpawn = 0
	end
end

function M.heroDeath(level)
	M.fear.bonus = M.fear.bonus + level * 10
	M.updateFear()
end

function M.updateFear()
	M.fear.total = 0
	for key, val in ipairs(M.fear) do
		M.fear.total = M.fear.total + val
	end
	M.fear.total = M.fear.total + M.fear.bonus
	M.fear.record = math.max(M.fear.record, M.fear.total)
end

return M