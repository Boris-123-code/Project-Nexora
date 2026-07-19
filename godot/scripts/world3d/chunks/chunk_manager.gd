extends Node


const CHUNK_SIZE = 32


var loaded_chunks = {}



func load_chunk(x:int,y:int):

    var id = Vector2i(x,y)


    if loaded_chunks.has(id):
        return


    loaded_chunks[id] = true


    print(
        "Chunk loaded:",
        id
    )



func unload_chunk(x:int,y:int):

    var id = Vector2i(x,y)


    if loaded_chunks.has(id):

        loaded_chunks.erase(id)

        print(
            "Chunk unloaded:",
            id
        )
