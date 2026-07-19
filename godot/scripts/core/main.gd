extends Node


func _ready() -> void:
	
	print("==============================")
	print("       NEXORA STARTING")
	print("==============================")
	
	
	NexoraEngine.start_game()
	TurnManager.start()
	
	
	print("All systems online")