extends Node2D


const MAP_SIZE = 20


func generate_world():
	print("Generating Nexora world...")
	
	for x in range(MAP_SIZE):
		for y in range(MAP_SIZE):
			print("Tile:", x, y)