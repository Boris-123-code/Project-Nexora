extends Node



func attack(
    attacker,
    defender
):

    var damage = (
        attacker.attack -
        defender.defense
    )


    if damage < 1:

        damage = 1



    defender.take_damage(
        damage
    )



    attacker.gain_experience(
        10
    )


    print(
        "Combat finished"
    )
