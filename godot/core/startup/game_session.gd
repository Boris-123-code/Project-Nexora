extends Node


var active_game = false



var initializer



func start_new_game():


    print(
        "Starting new Nexora session"
    )


    initializer = preload(
        "res://core/startup/world_initializer.gd"
    ).new()



    add_child(
        initializer
    )



    initializer.initialize_new_game()



    active_game = true




func is_running()->bool:


    return active_game

