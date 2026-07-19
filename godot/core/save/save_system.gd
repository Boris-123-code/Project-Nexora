extends Node


const SAVE_PATH = "user://nexora_save.json"


func save_game(data: Dictionary):

    var file = FileAccess.open(
        SAVE_PATH,
        FileAccess.WRITE
    )

    file.store_string(
        JSON.stringify(data)
    )

    file.close()

    print("Game saved")


func load_game():

    if not FileAccess.file_exists(SAVE_PATH):
        print("No save found")
        return {}

    var file = FileAccess.open(
        SAVE_PATH,
        FileAccess.READ
    )

    var data = JSON.parse_string(
        file.get_as_text()
    )

    file.close()

    return data
