extends Resource


class_name CityData



var city_name:String


var population:int = 100


var level:int = 1


var food:int = 0


var production:int = 0



func create(name:String):

    city_name = name


    print(
        "City founded:",
        city_name
    )



func grow():

    population += 10


    print(
        city_name,
        "population:",
        population
    )
