extends Node



@onready var turn_manager = $TurnManager



func _ready():

    print(
        "Nexora Game Loop Started"
    )


    start_game()



func start_game():

    turn_manager.start_turn()



func next_turn():

    turn_manager.end_turn()

    turn_manager.start_turn()
