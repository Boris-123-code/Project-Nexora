extends Node


var current_world = []


func load_world(data):

    current_world = data


    print(
        "Terrain loaded"
    )


func get_tile(x:int,y:int):

    if x < 0:
        return null

    if y < 0:
        return null


    if x >= current_world.size():
        return null


    if y >= current_world[x].size():
        return null


    return current_world[x][y]
