extends Area2D

@onready var label: Label = $Banshieepic/Sprite2D/Label
@onready var sprite: Sprite2D = $Banshieepic/Sprite2D

var original_scale: Vector2

func _ready() -> void:
	original_scale = sprite.scale

func _input_event(_viewport: Viewport, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Banshiee was clicked!")

			label.text = "Ouch!"

			var tween = create_tween()
			tween.tween_property(sprite, "scale", original_scale * 1.2, 0.1)
			tween.tween_property(sprite, "scale", original_scale, 0.1)
