local M = {
	knight = {
		health = 10,
		attack = 3,
		attack_speed = 1
	},
	spider = {
		health = 6,
		attack = 3,
		attack_speed = 0.6,
		callTime = 0.5,
		callCost = 10,
		empowerTime = 2,
		empowerCost = 25
	},
	spider_boss = {
		health = 100,
		attack = 12,
		attack_speed = 1.2,
	},
	peasant = {
		health = 4,
		attack = 1,
		attack_speed = 2
	},
	goblin = {
		health = 8,
		attack = 4,
		attack_speed = 0.8,
		callTime = 1,
		callCost = 15,
		empowerTime = 3,
		empowerCost = 35
	},
	goblin_boss = {
		health = 80,
		attack = 10,
		attack_speed = 0.9
	}
}

return M