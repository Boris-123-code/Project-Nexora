extends Resource

class_name PlayerState


var civilization_name: String = "Nexora Kingdom"

var gold: int = 100
var food: int = 50
var population: int = 1


func print_state() -> void:
	print("Civilization:", civilization_name)
	print("Gold:", gold)
	print("Food:", food)
	print("Population:", population)