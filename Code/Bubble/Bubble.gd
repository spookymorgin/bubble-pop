extends Area2D
class_name Bubble

var speed = 60 # pixels / sec

func _ready() -> void:
	input_event.connect(on_clicked)

func _process(delta: float) -> void:
	position.y -= speed * delta


func on_clicked(viewport, event, shape): 
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT: #making sure it is just left button 
			if event.pressed: #make it only a down-press
				pop()


func pop():
	queue_free()
