extends Resource


class_name CivilizationData


var name:String = "Unknown Empire"


var leader:String = "Unknown Leader"


var population:int = 1000


var gold:int = 0


var science:int = 0


var culture:int = 0



func initialize(
    civ_name:String,
    civ_leader:String
):

    name = civ_name

    leader = civ_leader


    print("==============================")
    print("CIVILIZATION CREATED")
    print(name)
    print("Leader:", leader)
    print("==============================")



func grow_population(amount:int):

    population += amount


    print(
        "Population:",
        population
    )
