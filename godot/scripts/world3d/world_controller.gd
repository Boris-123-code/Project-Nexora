extends Node3D


var world_ready: bool = false


func _ready():

    print("==============================")
    print("NEXORA 3D WORLD START")
    print("==============================")


    initialize_world()



func initialize_world():

    print("Loading terrain system")

    print("Loading chunk manager")

    print("Loading resources")


    world_ready = true


    print("3D WORLD READY")
