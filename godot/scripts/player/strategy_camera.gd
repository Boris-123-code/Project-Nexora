extends Camera3D



@export var move_speed:float = 30.0


@export var zoom_speed:float = 5.0



var zoom_level:float = 40.0



func _process(delta):


    var direction = Vector3.ZERO



    if Input.is_action_pressed(
        "ui_up"
    ):

        direction.z -= 1



    if Input.is_action_pressed(
        "ui_down"
    ):

        direction.z += 1



    if Input.is_action_pressed(
        "ui_left"
    ):

        direction.x -= 1



    if Input.is_action_pressed(
        "ui_right"
    ):

        direction.x += 1



    global_position += (
        direction *
        move_speed *
        delta
    )





func zoom(value):


    zoom_level += value


    zoom_level = clamp(
        zoom_level,
        10,
        100
    )


    position.y = zoom_level
