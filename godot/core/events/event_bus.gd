extends Node


signal turn_started(turn)

signal turn_finished(turn)

signal city_created(city_name)

signal resource_changed(resource_name, amount)


func emit_turn_started(value):
    turn_started.emit(value)


func emit_turn_finished(value):
    turn_finished.emit(value)


func emit_city_created(name):
    city_created.emit(name)


func emit_resource_changed(name, amount):
    resource_changed.emit(name, amount)
