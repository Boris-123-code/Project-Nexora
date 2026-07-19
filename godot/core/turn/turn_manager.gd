extends Node


signal turn_started(number)

signal turn_finished(number)



var current_turn:int = 1



var systems:Array = []



func register_system(system):

    systems.append(system)



func start_turn():

    print("==============================")
    print("TURN START:", current_turn)
    print("==============================")


    turn_started.emit(
        current_turn
    )


    process_systems()



func process_systems():

    for system in systems:

        if system.has_method(
            "process_turn"
        ):

            system.process_turn()



func end_turn():

    print(
        "TURN END:",
        current_turn
    )


    turn_finished.emit(
        current_turn
    )


    current_turn += 1
