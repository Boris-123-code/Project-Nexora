extends Resource


class_name AIDecision



var name:String

var priority:int = 0


var executed:bool = false



func create(
    decision_name:String,
    value:int
):

    name = decision_name

    priority = value



func execute():

    executed = true


    print(
        "AI decision executed:",
        name
    )
