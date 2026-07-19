extends MeshInstance3D


func create_mesh(data):

    print("Creating terrain mesh")


    var mesh_data = PlaneMesh.new()


    mesh_data.size = Vector2(
        100,
        100
    )


    mesh = mesh_data


    print("Terrain mesh created")
