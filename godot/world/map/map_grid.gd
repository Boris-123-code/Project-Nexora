extends Node



const MAP_WIDTH = 100

const MAP_HEIGHT = 100



var tiles = {}



func generate_map():


    print("==============================")

    print("GENERATING MAP GRID")

    print("==============================")


    for x in range(MAP_WIDTH):

        for y in range(MAP_HEIGHT):


            var tile = MapTile.new()


            tile.create(
                Vector2i(x,y),
                MapTile.TerrainType.GRASS
            )


            tiles[
                Vector2i(x,y)
            ] = tile



    print(
        "Tiles created:",
        tiles.size()
    )





func get_tile(
    position:Vector2i
):

    return tiles.get(
        position
    )





func set_terrain(
    position:Vector2i,
    type
):

    var tile = get_tile(position)


    if tile:

        tile.terrain = type
