extends PlayerStateGravityBase

func on_physics_process(delta):
	player.animated_sprite.play(player.animations.Jump_up)
	if player.is_on_floor():
		player.velocity.y = player.velocidad.y
	if player.velocity.y >= 0:
		state_machine.change_to(player.states.Falling)
	
	#repetead code
	handle_gravity(delta)
	controlled_node.velocity.x = Input.get_axis("left", "right") * player.velocidad.x
	player.move_and_slide()
	
func on_input(event):
	pass
