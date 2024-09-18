extends PlayerStateGravityBase

func on_physics_process(delta):
	player.animated_sprite.play(player.animations.Jump_down)
	if player.is_on_floor():
		state_machine.change_to(player.states.Idle)
		
	#repetead code
	handle_gravity(delta)
	controlled_node.velocity.x = Input.get_axis("left", "right") * player.velocidad.x
	player.move_and_slide()
	
func on_input(event):
	pass
