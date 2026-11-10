extends Node2D
@onready var heart: AnimatedSprite2D=$heart

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	heart.play("pop")

	var tween = create_tween()

	tween.set_parallel(true)

	tween.tween_property(self, "position:y", position.y - 45,0.8 )

	tween.tween_property(heart, "modulate:a", 0.0,0.8 )

	tween.set_parallel(false)
	tween.tween_callback(queue_free)
