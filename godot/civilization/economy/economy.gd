extends Node



var gold:int = 100


var income:int = 10



func process_turn():

    gold += income


    print(
        "Gold:",
        gold
    )



func spend(amount:int):

    gold -= amount
