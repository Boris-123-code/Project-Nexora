extends Node



const WORLD_SCENE = "res://scenes/world3d/nexora_world.tscn"



func start_new_game():

    print(
        "Creating new Nexora world"
    )


    initialize_world()



func load_game():

    print(
        "Loading save"
    )


    get_tree().change_scene_to_file(
        WORLD_SCENE
    )



func initialize_world():

    var seed = randi()


    print(
        "World Seed:",
        seed
    )


    get_tree().change_scene_to_file(
        WORLD_SCENE
    )
