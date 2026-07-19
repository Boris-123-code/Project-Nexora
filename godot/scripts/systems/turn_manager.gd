extends Node

class_name TurnManager


var turn: int = 1


func start() -> void:
	turn = 1
	print("Turn Manager ready")


func next_turn() -> void:
	turn += 1
	
	print("Current turn:", turn)