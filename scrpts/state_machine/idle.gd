extends StateInterface
class_name IdleState

func enter()-> void:
	var player = statemachine.player_ref

func physics_process(delta : float)-> void:
	var player = statemachine.player_ref
	if !player.is_on_floor():
		player.velocity.y += 980 * delta

	if player.direction.x:
		print("change to walk")
		statemachine.changeState("walk")

func handle_input(event: InputEvent)-> void:
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left"):
		statemachine.changeState("walk")
	if Input.is_action_just_pressed("ui_accept"):
		statemachine.changeState("jump")
	if Input.is_action_just_pressed("dash"):
		print("Dash is pressed :Idle")
		statemachine.changeState("dash")
