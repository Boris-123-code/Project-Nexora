extends Control



signal new_game_started

signal load_game_started



func press_new_game():

    print("==============================")
    print("NEW GAME SELECTED")
    print("==============================")


    new_game_started.emit()



func press_load_game():

    print("==============================")
    print("LOAD GAME SELECTED")
    print("==============================")


    load_game_started.emit()



func quit_game():

    print(
        "Exit Nexora"
    )

    get_tree().quit()
