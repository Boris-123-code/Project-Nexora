extends Node3D


class_name TerrainGenerator


var map_grid



func generate():

	print(
		"Generating Nexora terrain..."
	)


	map_grid = MapGrid.new()


	map_grid.generate_map()



	for position in map_grid.tiles:

		var tile = map_grid.tiles[position]

		create_tile_visual(tile)



func create_tile_visual(tile):

	var visual = TileVisual.new()


	add_child(
		visual
	)


	visual.setup(tile)