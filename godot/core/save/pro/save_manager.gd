extends Node



const SAVE_PATH = "user://nexora_save.json"



func save(
    data:NexoraSaveData
):

    var file = FileAccess.open(
        SAVE_PATH,
        FileAccess.WRITE
    )


    file.store_string(
        JSON.stringify(
            data.create_snapshot()
        )
    )


    file.close()


    print(
        "Nexora save complete"
    )



func load():

    if not FileAccess.file_exists(
        SAVE_PATH
    ):

        print(
            "No save file"
        )

        return null



    var file = FileAccess.open(
        SAVE_PATH,
        FileAccess.READ
    )


    var content = file.get_as_text()


    file.close()



    return JSON.parse_string(
        content
    )
