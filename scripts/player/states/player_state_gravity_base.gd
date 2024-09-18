class_name PlayerStateGravityBase extends PlayerStateBase #heararchy state machine

func handle_gravity(delta: float) -> void:
	if not controlled_node.is_on_floor():  # Aplica la gravedad solo si no está en el suelo
		controlled_node.velocity += controlled_node.get_gravity() * delta
