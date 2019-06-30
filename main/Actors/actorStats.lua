local M = {
	hero = {
		health = 10,
		attack = 3,
		attack_speed = 1,
		speed = 50,
		orders = hash("explore")
	},
	spider = {
		type = hash("spider"),
		health = 3,
		attack = 1,
		attack_speed = 0.6,
		callCost = 10,
		empowerCost = 30,
		speed = 22,
		bounty = 10
	},
	spider_boss = {
		type = hash("spider_boss"),
		health = 50,
		attack = 7,
		attack_speed = 1.2,
		speed = 10,
		bounty = 50,
		orders = hash("build"),
		build_time = 3,
		spawn_time = 4,
		spawn_limit = 60
	},
	goblin = {
		type = hash("goblin"),
		health = 5,
		attack = 2,
		attack_speed = 0.8,
		callCost = 15,
		empowerCost = 35,
		speed = 30,
		bounty = 3,
	},
	goblin_worker = {
		type = hash("goblin_worker"),
		health = 5,
		attack = 1,
		attack_speed = 1.5,
		speed = 30,
		bounty = 0,
		orders = hash("mine"),
		workTime = 3
	},
	goblin_boss = {
		type = hash("goblin_boss"),
		health = 30,
		attack = 12,
		attack_speed = 0.9,
		speed = 28,
		bounty = 100,
		orders = hash("build"),
		build_time = 5,
		spawn_time = 5,
		spawn_limit = 30
	},
	drake = {
		type = hash("drake"),
		health = 45,
		attack = 15,
		attack_speed = 1.4,
		callCost = 100,
		empowerCost = 200,
		speed = 35,
		bounty = 25,
	},
	drake_boss = {
		type = hash("drake_boss"),
		health = 50,
		attack = 17,
		attack_speed = 1.2,
		speed = 40,
		bounty = 100,
	},
	orc = {
		type = hash("orc"),
		health = 20,
		attack = 10,
		attack_speed = 1.5,
		callCost = 50,
		empowerCost = 500,
		speed = 15,
		bounty = 10,
	},
	orc_boss = {
		type = hash("orc_boss"),
		health = 80,
		attack = 15,
		attack_speed = 0.5,
		speed = 13,
		bounty = 100,
		orders = hash("build"),
		build_time = 5,
		spawn_time = 5,
		spawn_limit = 30
	},
	orc_cultist = {
		type = hash("orc_cultist"),
		health = 60,
		attack = 12,
		attack_speed = 0.7,
		speed = 13,
		bounty = 80,
		orders = hash("worship"),
		workTime = 5
	},
}

return M