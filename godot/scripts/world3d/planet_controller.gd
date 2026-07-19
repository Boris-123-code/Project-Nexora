extends Node3D


@onready var chunks = $ChunkManager


func _process(delta):

    var player = Vector3.ZERO


    chunks.update_chunks(
        player
    )
