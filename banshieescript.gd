extends Area2D
@onready var health= 100

func _ready() -> void:
	$Banshieepic.play("idle")
	print("health is 100 ")
