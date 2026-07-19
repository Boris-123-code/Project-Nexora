extends Node

class_name PlanetGenerator


var seed_value: int = 0

var map_size: int = 100


var terrain = []


func generate(seed_number:int):

    seed_value = seed_number
    
    seed(seed_value)

    print("==============================")
    print("GENERATING NEXORA PLANET")
    print("SEED:", seed_value)
    print("==============================")


    terrain.clear()


    for x in range(map_size):

        var row = []

        for y in range(map_size):

            var height = randf()


            var tile = create_tile(
                height
            )

            row.append(tile)


        terrain.append(row)


    print(
        "Planet generated:",
        map_size,
        "x",
        map_size
    )



func create_tile(height:float)->Dictionary:

    var tile = {}


    if height < 0.35:

        tile.type = "Ocean"


    elif height < 0.55:

        tile.type = "Plains"


    elif height < 0.75:

        tile.type = "Forest"


    else:

        tile.type = "Mountain"


    return tile
