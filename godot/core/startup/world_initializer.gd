extends Node


var world_seed:int


var player_civilization


var starting_city



func initialize_new_game():


    print("==============================")
    print("INITIALIZING NEXORA WORLD")
    print("==============================")


    create_seed()


    create_world()


    create_civilization()


    create_city()


    start_first_turn()




func create_seed():


    world_seed = randi()


    print(
        "World Seed:",
        world_seed
    )




func create_world():


    print(
        "Generating Planet..."
    )


    print(
        "Terrain generated"
    )


    print(
        "Biomes generated"
    )




func create_civilization():


    player_civilization = {
        
        "name":
        "Nexorian Empire",
        
        "population":
        1000
    }


    print(
        "Civilization created:",
        player_civilization.name
    )




func create_city():


    starting_city = {


        "name":
        "New Dawn",


        "population":
        100


    }


    print(
        "Capital founded:",
        starting_city.name
    )




func start_first_turn():


    print(
        "Starting Turn 1"
    )

