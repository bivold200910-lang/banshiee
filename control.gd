#Tried my very best to make the code look clean :>
extends Control

var health:float=40
var energy: float=60
var mood:float=100
var love:float=70
var hunger:float=60

@onready var health_bar: AnimatedSprite2D=$Healthbar
@onready var energy_bar: AnimatedSprite2D=$energybar
@onready var mood_bar: AnimatedSprite2D=$Moodbar
@onready var love_bar: AnimatedSprite2D=$Lovebar
@onready var hunger_bar: AnimatedSprite2D=$Hungerbar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_bars()

func update_bars() -> void:
	health_bar.frame= per_to_frame(health)
	energy_bar.frame= per_to_frame(energy)
	mood_bar.frame= per_to_frame(mood)
	love_bar.frame= per_to_frame(love)
	hunger_bar.frame= per_to_frame(hunger)


func per_to_frame(value: float) -> int:
	return clampi(roundi(value/10.0),0,10)

func pet_banshiee() -> void:
	love = minf(love + 5, 100)
	mood = minf(mood + 3, 100)

	update_bars()
