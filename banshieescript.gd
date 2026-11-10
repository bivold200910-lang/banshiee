extends Area2D
var heart_scene = preload("res://hearteffect.tscn")
@onready var health= 100
@onready var love: float = 50
@onready var mood: float = 75

func spawn_heart() -> void:
	var heart_instance = heart_scene.instantiate()
	get_tree().current_scene.add_child(heart_instance)

	heart_instance.global_position = global_position + Vector2(0, -50)

func _input_event(_viewport: Viewport, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			pet_banshiee()

func pet_banshiee() -> void:
	love = minf(love + 5, 100)
	mood = minf(mood + 3, 100)

	spawn_heart()

	print("Love: ", love)
	print("Mood: ", mood)
