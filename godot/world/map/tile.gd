extends Resource


class_name MapTile



enum TerrainType
{
    GRASS,
    FOREST,
    MOUNTAIN,
    DESERT,
    WATER
}



var coordinates:Vector2i


var terrain:TerrainType = TerrainType.GRASS


var resource = null


var owner = null


var unit = null


var city = null



func create(
    position:Vector2i,
    type:TerrainType
):

    coordinates = position

    terrain = type



    print(
        "Tile created:",
        coordinates,
        terrain
    )



func set_owner(
    civilization
):

    owner = civilization



func place_unit(
    new_unit
):

    unit = new_unit
