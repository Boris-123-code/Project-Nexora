extends Node3D


const SIZE = 100
const HEIGHT = 20


var noise = FastNoiseLite()


var height_map = []



func _ready():

    noise.seed = randi()

    noise.frequency = 0.03


    generate()



func generate():

    print("==============================")
    print("GENERATING 3D TERRAIN")
    print("==============================")


    height_map.clear()


    for x in range(SIZE):

        var row = []


        for z in range(SIZE):

            var value = noise.get_noise_2d(
                x,
                z
            )


            var height = value * HEIGHT


            row.append(height)


        height_map.append(row)


    print(
        "Terrain generated:",
        SIZE,
        "x",
        SIZE
    )
