extends PlayerStateGravityBase

func on_physics_process(delta):
	player.velocity.x = 0
	player.animated_sprite.play(player.animations.Idle)
	
	#repetead code
	if Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		state_machine.change_to(player.states.Running)
	
	handle_gravity(delta)
	controlled_node.velocity.x = Input.get_axis("left", "right") * player.velocidad.x
	player.move_and_slide()

func on_input(event):
	#if Input.is_action_pressed("left") or Input.is_action_pressed("right"):
	#	state_machine.change_to(player.states.Running)
	if Input.is_action_just_pressed("jump"):
		state_machine.change_to(player.states.Jumping)
