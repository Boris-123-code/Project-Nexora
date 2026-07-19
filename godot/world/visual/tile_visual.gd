extends MeshInstance3D


class_name TileVisual


var tile_data


func setup(tile):

	tile_data = tile

	create_mesh()



func create_mesh():

	var box = BoxMesh.new()

	box.size = Vector3(
		1,
		0.2,
		1
	)

	mesh = box


	position = Vector3(
		tile_data.coordinates.x,
		0,
		tile_data.coordinates.y
	)


	apply_terrain_material()



func apply_terrain_material():

	var material = StandardMaterial3D.new()


	match tile_data.terrain:

		MapTile.TerrainType.GRASS:

			material.albedo_color = Color.GREEN


		MapTile.TerrainType.FOREST:

			material.albedo_color = Color.DARK_GREEN


		MapTile.TerrainType.MOUNTAIN:

			material.albedo_color = Color.GRAY


		MapTile.TerrainType.DESERT:

			material.albedo_color = Color.YELLOW


		MapTile.TerrainType.WATER:

			material.albedo_color = Color.BLUE


	mesh.material = material