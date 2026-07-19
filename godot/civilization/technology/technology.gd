extends Resource


class_name TechnologyData



var id:String


var name:String


var description:String



var cost:int = 100



var unlocked:bool = false



var requirements:Array = []



func create(
    tech_id:String,
    tech_name:String,
    tech_cost:int
):

    id = tech_id

    name = tech_name

    cost = tech_cost



func unlock():

    unlocked = true


    print(
        "Technology unlocked:",
        name
    )
