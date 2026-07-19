extends Node



var units:Array = []



func add_unit(
    unit:UnitData
):

    units.append(
        unit
    )


    print(
        "Unit joined army:",
        unit.name
    )



func remove_unit(
    unit:UnitData
):

    units.erase(
        unit
    )



func get_strength()->int:

    var value = 0


    for unit in units:

        value += unit.attack


    return value
