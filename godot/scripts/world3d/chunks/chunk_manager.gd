extends Node3D


const VIEW_DISTANCE = 2


var loaded_chunks = {}



func update_chunks(player_position:Vector3):

    var chunk_x = floor(
        player_position.x / 32
    )

    var chunk_z = floor(
        player_position.z / 32
    )


    for x in range(
        chunk_x - VIEW_DISTANCE,
        chunk_x + VIEW_DISTANCE
    ):

        for z in range(
            chunk_z - VIEW_DISTANCE,
            chunk_z + VIEW_DISTANCE
        ):

            load_chunk(
                Vector2i(x,z)
            )



func load_chunk(position:Vector2i):

    if loaded_chunks.has(position):
        return


    var chunk = Node3D.new()

    chunk.name = (
        "Chunk_" +
        str(position)
    )


    add_child(chunk)


    loaded_chunks[position] = chunk


    print(
        "Loaded:",
        position
    )



func unload_far_chunks():

    pass
