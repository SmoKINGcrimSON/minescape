class_name PlayerStateBase extends StateBase

#@export var SPEED: float = 200.0
#@export var JUMP_VELOCITY: float = -300.0

var player: Player:
	set(value):
		controlled_node = value
	get:
		return controlled_node
