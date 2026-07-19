extends Node



func generate_starting_map():


    var map = MapGrid.new()


    map.generate_map()


    print(
        "Starting map ready"
    )


    return map
