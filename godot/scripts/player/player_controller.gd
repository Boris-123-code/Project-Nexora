extends Node



var selected_tile = null



func select_tile(tile):


    selected_tile = tile


    print(
        "Selected tile:",
        tile.coordinates
    )





func move_unit(
    unit,
    target_tile
):


    print(
        "Moving unit to:",
        target_tile.coordinates
    )



    unit.position = (
        target_tile.coordinates
    )
