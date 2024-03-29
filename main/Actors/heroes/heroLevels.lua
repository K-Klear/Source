local M = {}

M[1] = {}
M[1].XP = 6.6
M[1].HP = 10
M[1].ATK = 3
M[1].attackSpeed = 1
for lvl = 2, 20 do
	M[lvl] = {}
	M[lvl].XP = math.ceil(M[lvl - 1].XP * 1.4)
	M[lvl].HP = math.ceil(M[lvl - 1].HP * 1.2)
	M[lvl].ATK = M[lvl - 1].ATK + math.floor(lvl / 4)
	M[lvl].attackSpeed = (10 - (0.4 * lvl)) / 10 
end

return M