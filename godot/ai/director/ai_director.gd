extends Node



var decisions:Array = []



func add_decision(
    decision:AIDecision
):

    decisions.append(
        decision
    )



func process_turn():

    print(
        "AI Director processing turn"
    )


    decisions.sort_custom(
        sort_priority
    )


    for decision in decisions:

        if not decision.executed:

            decision.execute()



func sort_priority(a,b):

    return a.priority > b.priority
