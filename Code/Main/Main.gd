extends Node
class_name Main

const BUBBLE = preload("res://Bubble/Bubble.tscn")
@onready var timer: Timer = $Timer

func _ready() -> void:
	timer.timeout.connect(spawn_bubble)
	spawn_bubble()

func spawn_bubble():
	var bubble: Bubble = BUBBLE.instantiate()
	bubble.position.x = randi_range(0, get_viewport().size.x)
	bubble.position.y = get_viewport().size.y
	add_child(bubble)
