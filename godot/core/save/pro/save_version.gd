extends Node



const CURRENT_VERSION = "0.1"



func check_version(
    save_version:String
):

    if save_version != CURRENT_VERSION:

        print(
            "Save migration required"
        )

    else:

        print(
            "Save version OK"
        )
