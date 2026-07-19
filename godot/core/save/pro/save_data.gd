extends Resource


class_name NexoraSaveData



var version:String = "0.1"



var world = {}

var civilizations = []

var cities = []

var technologies = []

var diplomacy = []

var military = []



func create_snapshot():

    return {

        "version": version,

        "world": world,

        "civilizations": civilizations,

        "cities": cities,

        "technologies": technologies,

        "diplomacy": diplomacy,

        "military": military

    }
