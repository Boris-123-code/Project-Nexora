extends Node3D


var resource_type

var amount:int = 0


var position_on_map:Vector2i



func create(
    type,
    value:int,
    location:Vector2i
):

    resource_type = type

    amount = value

    position_on_map = location


    print(
        "Resource created:",
        resource_type,
        amount
    )



func collect(value:int):

    amount -= value


    if amount <= 0:

        remove_resource()



func remove_resource():

    print(
        "Resource depleted"
    )

    queue_free()
