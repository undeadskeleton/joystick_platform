extends StateInterface
class_name IdleState


func physics_process(delta : float)-> void:
	var player = statemachine.player_ref
	
	if !player.is_on_floor():
		statemachine.changeState("fall")

func handle_input(event: InputEvent)-> void:
	if Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_left"):
		statemachine.changeState("walk")
	if Input.is_action_just_pressed("ui_accept"):
		statemachine.changeState("jump")
	if Input.is_action_just_pressed("dash"):
		statemachine.changeState("dash")
