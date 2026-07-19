extends MeshInstance3D


const MAP_SIZE = 100
const HEIGHT_SCALE = 15.0


func generate(height_map):

    var vertices = PackedVector3Array()
    var indices = PackedInt32Array()


    for x in range(MAP_SIZE):

        for z in range(MAP_SIZE):

            var height = height_map[x][z]

            vertices.append(
                Vector3(
                    x,
                    height * HEIGHT_SCALE,
                    z
                )
            )



    for x in range(MAP_SIZE - 1):

        for z in range(MAP_SIZE - 1):

            var index = x * MAP_SIZE + z


            indices.append(index)
            indices.append(index + 1)
            indices.append(index + MAP_SIZE)


            indices.append(index + 1)
            indices.append(index + MAP_SIZE + 1)
            indices.append(index + MAP_SIZE)



    var mesh_data = ArrayMesh.new()


    var arrays = []

    arrays.resize(
        Mesh.ARRAY_MAX
    )


    arrays[
        Mesh.ARRAY_VERTEX
    ] = vertices


    arrays[
        Mesh.ARRAY_INDEX
    ] = indices


    mesh_data.add_surface_from_arrays(
        Mesh.PRIMITIVE_TRIANGLES,
        arrays
    )


    mesh = mesh_data


    print(
        "3D terrain mesh generated"
    )
