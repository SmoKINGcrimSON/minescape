extends PlayerStateGravityBase

func on_physics_process(delta):
	controlled_node.animated_sprite.play(player.animations.Run)
	
	#repetead code
	handle_gravity(delta)
	controlled_node.velocity.x = Input.get_axis("left", "right") * player.velocidad.x
	controlled_node.move_and_slide()
	
func on_input(event):
	if Input.is_action_just_pressed("jump"):
		state_machine.change_to(player.states.Jumping)
	elif not Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		state_machine.change_to(player.states.Idle)	
