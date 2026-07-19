extends Resource


class_name UnitData



var id:String


var name:String


var health:int = 100


var attack:int = 10


var defense:int = 5


var experience:int = 0



func create(
    unit_id:String,
    unit_name:String
):

    id = unit_id

    name = unit_name



func take_damage(
    value:int
):

    health -= value


    print(
        name,
        "HP:",
        health
    )



func gain_experience(
    value:int
):

    experience += value


    print(
        name,
        "XP:",
        experience
    )
