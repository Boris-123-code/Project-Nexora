extends Node3D


var chunk_position: Vector2i

var size:int = 32


var generated:bool = false



func generate(position:Vector2i):

    chunk_position = position


    print(
        "Generating chunk:",
        chunk_position
    )


    generated = true



func unload():

    print(
        "Unload chunk:",
        chunk_position
    )

    queue_free()
