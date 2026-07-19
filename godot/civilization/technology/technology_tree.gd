extends Node



var technologies = {}



var science_points:int = 0



func add_technology(
    tech:TechnologyData
):

    technologies[tech.id] = tech



func research(id:String):

    if not technologies.has(id):

        print(
            "Technology not found"
        )

        return



    var tech = technologies[id]


    if science_points >= tech.cost:

        science_points -= tech.cost


        tech.unlock()


    else:

        print(
            "Not enough science"
        )



func add_science(value:int):

    science_points += value


    print(
        "Science:",
        science_points
    )
