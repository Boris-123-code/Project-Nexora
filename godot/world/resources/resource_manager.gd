extends Node3D


var resources = []



func spawn_resource(
    type,
    amount,
    position
):

    var node = Node3D.new()


    node.name = "ResourceNode"


    add_child(node)


    resources.append(node)


    print(
        "Spawn resource:",
        type,
        amount,
        position
    )



func get_resources():

    return resources
