class_name Entidad extends CharacterBody2D

#fields
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

@export var velocidad : Vector2:
	set(value):
		velocidad.x = clamp(value.x, 0, 250)
		velocidad.y = clamp(value.y, -500, 0)
	get:
		return velocidad
@export var nombre : String:
	set(value):
		nombre = value.to_lower().capitalize()
	get:
		return nombre
@export var vida : int:
	set(value):
		vida = clamp(value, 0, 1000)
	get:
		return vida
var vida_porcentaje: int:
	get:
		return vida * 0.1
		
func _init() -> void:
	velocidad = Vector2(150, -300.0)

func _physics_process(delta: float) -> void:
	_gaze_direction()
	
func _gaze_direction() -> void: #change the position of the character based on the gaze position
	var direction = Input.get_axis("left", "right")
	if direction < 0: animated_sprite.flip_h = true
	elif direction > 0: animated_sprite.flip_h = false
