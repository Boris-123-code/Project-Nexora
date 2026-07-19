extends Node

class_name WorldMap


var width: int = 50
var height: int = 50


func generate() -> void:
	print("Generating world...")
	print("Size:", width, "x", height)