extends Node

class_name NexoraEngine


var current_turn: int = 1
var game_started: bool = false


func start_game() -> void:
	game_started = true
	current_turn = 1
	
	print("================================")
	print("NEXORA ENGINE STARTED")
	print("Turn:", current_turn)
	print("================================")


func next_turn() -> void:
	current_turn += 1
	
	print("Turn passed:", current_turn)