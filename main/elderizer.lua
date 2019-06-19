M = {}

local vowels = {"a", "e", "i", "o", "u", "y"}

local title = {
	"Dread",
	"Dead",
	"Great",
	"Terrible",
	"Unspeakable",
	"Dark",
	"Black",
	"Fluffy",
	"Nightly",
	"Horrible",
	"Inconceivable",
	"Inevitable",
	"Immense",
	"Blind",
	"Sleeper",
	"Hidden",
	"Savage",
	"Destroyer",
	"Currupting",
	"Deathly",
	"Transcendental",
	"Unholy",
	"Profane"
}

local suffix = {
	consonant = {
		"oth",
		"tll",
		"ra",
		"otep",
		"ath",
		"uth",
		"urath",
		"scha",
		"llor",
		"ah",
		"hrha",
	},
	vowel = {
		"th",
		"hal",
		"lios",
		"rath",
		"ath",
		"scha",
		"ah"
	}
}

local substitutions = {
	a = {"ae", "ah"},
	b = {"ph"},
	c = {"k", "kk", "ts", "tz", "cz"},
	d = {"dh"},
	e = {"ea", "aa", "'"},
	f = {"ph", "fh"},
	g = {"k", "gh"},
	h = {"'"},
	i = {"y", "yy"},
	j = {"iy", "y"},
	k = {"kk", "c'", "q"}, 
	l = {"r", "rl", "ll", "l"},
	m = {"hm", "mh"},
	n = {"n'", "mn"},
	o = {"oa", "uo"},
	p = {"pf", "pt"},
	q = {"kv", "qu"},
	r = {"rr", "r'", "l", "lr"},
	s = {"tz", "z", "zz"},
	t = {"t'", "th"},
	u = {"oo", "v"},
	v = {"w", "u"},
	w = {"w"},
	x = {"ks", "xz"},
	y = {"yy", "i"},
	z = {"zz", "tz"},
}

function M.elderize(name)
	-- normalize (This should ideally also remove accents and special characters, but I'm lazy so this will do)
	local elderName = string.lower(name)
	if name == "" then elderName = string.char(math.random(97, 122)) end	-- Create a single-letter base if name not provided

	--substitutions
	local subs = {}
	for charNum = 1, string.len(elderName) do
		subs[charNum] = false
		local char = string.sub(elderName, charNum, charNum)
		if substitutions[char] then
			subs[charNum] = substitutions[char][math.random(1, #substitutions[char])]
		end
	end
	if subs[1] == "'" then subs[1] = false end	-- remove leading apostrophe
	local offset = 0
	for key, val in ipairs(subs) do
		if val and math.random() > 0.5 then
			local offsetChar = key + offset
			elderName = string.sub(elderName, 1, offsetChar - 1)..val..string.sub(elderName, offsetChar + 1, -1)
			offset = offset + string.len(val) - 1
		end
	end
	
	-- remove consecutive apostrophes
	offset = 0
	local prevChar
	for charNum = 1, string.len(elderName) do
		local char = string.sub(elderName, charNum - offset, charNum - offset)
		if prevChar == "'" and char == "'" then
			elderName = string.sub(elderName, 1, charNum - offset - 1)..string.sub(elderName, charNum - offset + 1, -1)
			offset = offset + 1
		end
		prevChar = char
	end

	-- suffix (Very short or so far unchanged names always get a suffix)
	if math.random() > 0.5 or elderName == string.lower(name) or string.len(elderName) < 2 then
		local vowel = false
		for key, val in ipairs(vowels) do
			if string.sub(name, -1) == val then vowel = true end
		end
		if vowel then
			elderName = elderName..suffix.vowel[math.random(1, #suffix.vowel)]
		else
			elderName = elderName..suffix.consonant[math.random(1, #suffix.consonant)]
		end
	end

	--capitalize
	elderName = string.upper(string.sub(elderName, 1, 1))..string.sub(elderName, 2, -1)

	-- title
	local rand = math.random(1, 5)
	if rand == 1 then
		elderName = elderName.." the "..title[math.random(1, #title)]
	elseif rand == 2 then
		elderName = "The "..title[math.random(1, #title)].." "..elderName
	end
	
	return elderName
end

return M