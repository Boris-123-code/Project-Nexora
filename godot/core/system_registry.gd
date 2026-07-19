extends Node



var systems = {}



func register(
    name:String,
    system
):

    systems[name] = system


    print(
        "System registered:",
        name
    )



func get_system(name:String):

    return systems.get(
        name
    )
