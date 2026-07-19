extends Control



var turn:int = 1


var gold:int = 100


func update_turn(value):

    turn = value

    print(
        "UI Turn:",
        turn
    )



func update_gold(value):

    gold = value

    print(
        "UI Gold:",
        gold
    )
