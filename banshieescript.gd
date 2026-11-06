extends Area2D

func _ready() -> void:
	print("HELLO FROM BANSHIEE!")

func _input_event(_viewport: Viewport, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Banshiee was clicked!")
