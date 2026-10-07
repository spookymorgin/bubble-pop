extends Node2D
class_name Bubble

var speed = 60 # pixels / sec

func _process(delta: float) -> void:
	position.y -= speed * delta
