extends Resource


class_name RelationData



enum RelationType
{
    NEUTRAL,
    FRIENDLY,
    TRADE,
    ALLIANCE,
    HOSTILE,
    WAR
}



var civilization_a:String

var civilization_b:String


var relation:RelationType = RelationType.NEUTRAL


var reputation:int = 0



func create(
    a:String,
    b:String
):

    civilization_a = a

    civilization_b = b



func change_relation(
    new_relation:RelationType
):

    relation = new_relation


    print(
        "Relation changed:",
        civilization_a,
        "<->",
        civilization_b
    )
