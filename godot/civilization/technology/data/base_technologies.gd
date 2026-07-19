extends Node



func create_starting_tree():

    var agriculture = TechnologyData.new()

    agriculture.create(
        "agriculture",
        "Agriculture",
        50
    )



    var mining = TechnologyData.new()

    mining.create(
        "mining",
        "Mining",
        75
    )



    var engineering = TechnologyData.new()

    engineering.create(
        "engineering",
        "Engineering",
        150
    )



    return [
        agriculture,
        mining,
        engineering
    ]
