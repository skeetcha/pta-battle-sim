@enum ActivationType trigger static
@enum Keywords immune lastChance
@enum Limit hourly

mutable struct Ability
	name
	activation
	limit
	keywords
	effect
end

function setupAbilities()
	global abilities
	abilities = {}

	abilities["Chlorophyll"] = Ability()
	abilities["Chlorophyll"].name = "Chlorophyll"
	abilities["Chlorophyll"].activation = trigger
	abilities["Chlorophyll"].limit = hourly
	abilities["Chlorophyll"].effect = "The Pokemon's Combat Stages may not be lowered by the effect of Abilities or Moves. Status effects may still alter their Combat Stages."

	abilities["Flower Gift"] = Ability()
	abilities["Flower Gift"].name = "Flower Gift"
	abilities["Flower Gift"].activation = static
	abilities["Flower Gift"].keywords = [immune]
	abilities["Flower Gift"].effect = "Confusion, Infatuation. The Pokemon and its Grass Type allies cannot have their stats lowered and are also Immune to Confusion and Infatuation."

	abilities["Leaf Guard"] = Ability()
	abilities["Leaf Guard"].name = "Leaf Guard"
	abilities["Leaf Guard"].activation = trigger
	abilities["Leaf Guard"].effect = "While in Sunny Weather, the user is healed of Paralysis, Burns, Poison, Freezing, or Sleep."

	abilities["Overgrow"] = Ability()
	abilities["Overgrow"].name = "Overgrow"
	abilities["Overgrow"].activation = trigger
	abilities["Overgrow"].keywords = [lastChance]
	abilities["Overgrow"].effect = "Grass"

	abilities["Thick Fat"] = Ability()
	abilities["Thick Fat"].name = "Thick Fat"
	abilities["Thick Fat"].activation = static
	abilities["Thick Fat"].effect = "The Pokemon is treated as if they are Resistant to Fire Type Moves and Ice Type Moves."

	abilities["Venom"] = Ability()
	abilities["Venom"].name = "Venom"
	abilities["Venom"].activation = trigger
	abilities["Venom"].keywords = [lastChance]
	abilities["Venom"].effect = "Poison"
end