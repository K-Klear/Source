local M = {
	hero = {
		health = 10,
		attack = 3,
		attack_speed = 1,
		speed = 25,
		orders = hash("explore")
	},
	spider = {
		type = hash("spider"),
		health = 3,
		attack = 1,
		attack_speed = 0.6,
		callTime = 0.6,
		callCost = 10,
		empowerTime = 2,
		empowerCost = 25,
		speed = 22,
		bounty = 1
	},
	spider_boss = {
		type = hash("spider_boss"),
		health = 50,
		attack = 7,
		attack_speed = 1.2,
		speed = 10,
		bounty = 50,
		orders = hash("build"),
		build_time = 4,
		spawn_time = 5
	},
	peasant = {
		health = 4,
		attack = 1,
		attack_speed = 2,
		speed = 15,
	},
	goblin = {
		type = hash("goblin"),
		health = 5,
		attack = 2,
		attack_speed = 0.8,
		callTime = 1,
		callCost = 15,
		empowerTime = 3,
		empowerCost = 35,
		speed = 30,
		bounty = 3,
	},
	goblin_boss = {
		type = hash("goblin_boss"),
		health = 30,
		attack = 12,
		attack_speed = 0.9,
		speed = 28,
		bounty = 100,
		orders = hash("build"),
		build_time = 5
	}
}

return M