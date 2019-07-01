@enum PType normal fighting flying poison ground rock bug ghost steel fire water grass electric psychic ice dragon dark fairy
@enum Habitat forest grassland rainforest
@enum Diet herbivore phototroph omnivore
@enum HeightClass small medium large
@enum EggGroup monster plant

mutable struct Pokemon
	number
	name
	baseStats
	megaStats
	typeOne
	typeTwo
	basicAbilities
	highAbilities
	megaAbilities
	height
	heightClass
	weight
	weightClass
	genderRatio
	eggGroupOne
	eggGroupTwo
	avgHatchRate
	diet
	habitat
	skillList
	currentMoves
	moves
	eggMoves
	tutorMoves
	captureRate
	expDrop
end

function setupPokemon()
	setupMoves()	# TODO: Write
	setupSkills()	# TODO: Write
	setupAbilities()

	global pokemonList
	pokemonList = {}

	pokemonList["Bulbasaur"] = Pokemon()
	pokemonList["Bulbasaur"].number = 1
	pokemonList["Bulbasaur"].name = "Bulbasaur"
	pokemonList["Bulbasaur"].baseStats = Stats(5, 5, 5, 7, 7, 5)
	pokemonList["Bulbasaur"].typeOne = grass
	pokemonList["Bulbasaur"].typeTwo = poison
	pokemonList["Bulbasaur"].basicAbilities = [abilities["Overgrow"], abilities["Venom"], abilities["Chlorophyll"]]
	pokemonList["Bulbasaur"].highAbilities = [abilities["Leaf Guard"]]
	pokemonList["Bulbasaur"].height = 0.7
	pokemonList["Bulbasaur"].heightClass = small
	pokemonList["Bulbasaur"].weight = 6.9
	pokemonList["Bulbasaur"].weightClass = 1
	pokemonList["Bulbasaur"].genderRatio = 0.875
	pokemonList["Bulbasaur"].eggGroupOne = monster
	pokemonList["Bulbasaur"].eggGroupTwo = plant
	pokemonList["Bulbasaur"].avgHatchRate = 10
	pokemonList["Bulbasaur"].diet = [herbivore, phototroph]
	pokemonList["Bulbasaur"].habitat = [forest, grassland, rainforest]
	pokemonList["Bulbasaur"].skillList = {"overland": 7, "surface": 2, "jump": 2, "power": 1, "intelligence": 3, "extra": [skills["Sprouter"]]}
	pokemonList["Bulbasaur"].moves = [{"level": 1, "move": moves["Tackle"]}, {"level": 3, "move": moves["Growl"]}, {"level": 7, "move": moves["Leech Seed"]}, {"level": 9, "move": moves["Vine Whip"]}, {"level": 13, "move": moves["Poison Powder"]}, {"level": 13, "move": moves["Sleep Powder"]}, {"level": 15, "move": moves["Take Down"]}, {"level": 19, "move": moves["Razor Leaf"]}, {"level": 21, "move": moves["Sweet Scent"]}, {"level": 25, "move": moves["Growth"]}, {"level": 27, "move": moves["Double-Edge"]}, {"level": 31, "move": moves["Worry Seed"]}, {"level": 33, "move": moves["Synthesis"]}, {"level": 37, "move": moves["Seed Bomb"]}]
	pokemonList["Bulbasaur"].eggMoves = [moves["Amnesia"], moves["Charm"], moves["Curse"], moves["Endure"], moves["Giga Drain"], moves["Grass Whistle"], moves["Grassy Terrain"], moves["Ingrain"], moves["Leaf Storm"], moves["Magical Leaf"], moves["Nature Power"], moves["Petal Dance"], moves["Power Whip"], moves["Skull Bash"], moves["Sludge"]]
	pokemonList["Bulbasaur"].tutorMoves = [moves["Bind"], moves["Frenzy Plant"], moves["Giga Drain"], moves["Grass Pledge"], moves["Knock Off"], moves["Seed Bomb"]]
	pokemonList["Bulbasaur"].captureRate = 20
	pokemonList["Bulbasaur"].expDrop = 15

	pokemonList["Ivysaur"] = Pokemon()
	pokemonList["Ivysaur"].number = 2
	pokemonList["Ivysaur"].name = "Ivysaur"
	pokemonList["Ivysaur"].baseStats = Stats(6, 6, 6, 8, 8, 6)
	pokemonList["Ivysaur"].typeOne = grass
	pokemonList["Ivysaur"].typeTwo = poison
	pokemonList["Ivysaur"].basicAbilities = [abilities["Overgrow"], abilities["Venom"], abilities["Chlorophyll"]]
	pokemonList["Ivysaur"].highAbilities = [abilities["Leaf Guard"], abilities["Flower Gift"]]
	pokemonList["Ivysaur"].height = 1
	pokemonList["Ivysaur"].heightClass = medium
	pokemonList["Ivysaur"].weight = 13
	pokemonList["Ivysaur"].weightClass = 2
	pokemonList["Ivysaur"].genderRatio = 0.875
	pokemonList["Ivysaur"].eggGroupOne = monster
	pokemonList["Ivysaur"].eggGroupTwo = plant
	pokemonList["Ivysaur"].diet = [omnivore, phototroph]
	pokemonList["Ivysaur"].habitat = [forest, grassland, rainforest]
	pokemonList["Ivysaur"].skillList = {"overland": 8, "surface": 2, "jump": 2, "power": 2, "intelligence": 3, "extra": [skills["Sprouter"]]}
	pokemonList["Ivysaur"].moves = [{"level": 3, "move": moves["Growl"]}, {"level": 7, "move": move["Leech Seed"]}, {"level": 9, "move": moves["Vine Whip"]}, {"level": 13, "move": moves["Poison Powder"]}, {"level": 13, "move": moves["Sleep Powder"]}, {"level": 15, "move": moves["Take Down"]}, {"level": 20, "move": moves["Razor Leaf"]}, {"level": 23, "move": moves["Sweet Scent"]}, {"level": 28, "move": moves["Growth"]}, {"level": 31, "move": moves["Double-Edge"]}, {"level": 36, "move": moves["Worry Seed"]}, {"level": 39, "move": moves["Synthesis"]}, {"level": 44, "move": moves["Solar Beam"]}]
	pokemonList["Ivysaur"].eggMoves = []
	pokemonList["Ivysaur"].tutorMoves = [moves["Bind"], moves["Frenzy Plant"], moves["Giga Drain"], moves["Grass Pledge"], moves["Knock Off"], moves["Seed Bomb"], moves["Snore"], moves["Synthesis"], moves["Worry Seed"]]
	pokemonList["Ivysaur"].captureRate = 10
	pokemonList["Ivysaur"].expDrop = 30

	pokemonList["Venusaur"] = Pokemon()
	pokemonList["Venusaur"].number = 3
	pokemonList["Venusaur"].name = "Venusaur"
	pokemonList["Venusaur"].baseStats = Stats(8, 8, 8, 10, 10, 8)
	pokemonList["Venusaur"].megaStats = Stats(0, 2, 4, 2, 2, 0)
	pokemonList["Venusaur"].typeOne = grass
	pokemonList["Venusaur"].typeTwo = poison
	pokemonList["Venusaur"].basicAbilities = [abilities["Overgrow"], abilities["Venom"], abilities["Chlorophyll"]]
	pokemonList["Venusaur"].highAbilities = [abilities["Leaf Guard"], abilities["Flower Gift"]]
	pokemonList["Venusaur"].megaAbilities = [abilities["Thick Fat"]]
	pokemonList["Venusaur"].height = 2
	pokemonList["Venusaur"].heightClass = large
	pokemonList["Venusaur"].weight = 100
	pokemonList["Venusaur"].weightClass = 5
	pokemonList["Venusaur"].genderRatio = 0.875
	pokemonList["Venusaur"].eggGroupOne = monster
	pokemonList["Venusaur"].eggGroupTwo = plant
	pokemonList["Venusaur"].diet = [omnivore, phototroph]
	pokemonList["Venusaur"].habitat = [forest, grassland, rainforest]
	pokemonList["Venusaur"].skillList = {"overland": 9, "surface": 2, "jump": 1, "power": 4, "intelligence": 4, "extra": [skills["Sprouter"]]}
	pokemonList["Venusaur"].moves = [{"level": "e", "move": moves["Petal Dance"]}, {"level": 3, "move": moves["Growl"]}, {"level": 7, "move": moves["Leech Seed"]}, {"level": 9, "move": moves["Vine Whip"]}, {"level": 13, "move": moves["Poison Powder"]}, {"level": 13, "move": moves["Sleep Powder"]}, {"level": 15, "move": moves["Take Down"]}, {"level": 20, "move": moves["Razor Leaf"]}, {"level": 23, "move": moves["Sweet Scent"]}, {"level": 28, "move": moves["Growth"]}, {"level": 31, "move": moves["Double-Edge"]}, {"level": 32, "move": moves["Petal Dance"]}, {"level": 39, "move": moves["Worry Seed"]}, {"level": 45, "move": moves["Synthesis"]}, {"level": 53, "move": moves["Solar Beam"]}]
	pokemonList["Venusaur"].eggMoves = []
	pokemonList["Venusaur"].tutorMoves = [moves["Bind"], moves["Block"], moves["Frenzy Plant"], moves["Giga Drain"], moves["Grass Pledge"], moves["Knock Off"], moves["Outrage"], moves["Petal Dance"], moves["Seed Bomb"], moves["Snore"], moves["Synthesis"], moves["Worry Seed"]]
	pokemonList["Venusaur"].captureRate = 5
	pokemonList["Venusaur"].expDrop = 50
end