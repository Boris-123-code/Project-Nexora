extends Resource

class_name GameState


var turn: int = 1
var year: int = 0

var world_seed: int = 0

var player_name: String = "Unknown Civilization"

var gold: int = 100
var food: int = 100
var science: int = 0


func initialize(seed_value: int) -> void:
    world_seed = seed_value
    
    turn = 1
    year = 0
    
    print("==============================")
    print("GAME STATE INITIALIZED")
    print("Seed:", world_seed)
    print("==============================")


func next_turn() -> void:
    turn += 1
    year += 1
    
    print("Turn:", turn, " Year:", year)
