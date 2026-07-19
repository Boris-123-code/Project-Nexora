extends Control



var resources = {}



func update_resource(
    name,
    value
):

    resources[name] = value


    print(
        name,
        ":",
        value
    )
