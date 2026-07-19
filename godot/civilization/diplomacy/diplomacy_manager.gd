extends Node



var relations = []



func create_relation(
    civ_a:String,
    civ_b:String
):

    var relation = RelationData.new()


    relation.create(
        civ_a,
        civ_b
    )


    relations.append(
        relation
    )


    print(
        "Diplomatic contact:",
        civ_a,
        civ_b
    )



func declare_war(
    a:String,
    b:String
):

    for relation in relations:

        if relation.civilization_a == a \
        and relation.civilization_b == b:

            relation.change_relation(
                RelationData.RelationType.WAR
            )



func get_relations():

    return relations
