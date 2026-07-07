extends StateInterface

class_name DashState

@export var Dash_SPEED : int = 200
@export var dash_timer : float
var can_dash : bool = false

func enter()-> void:
	can_dash = true

func physics_process(delta : float)-> void:
	var player = statemachine.player_ref
	if can_dash:
		dash_timer-=delta
		player.velocity.x = Dash_SPEED * statemachine.last_dir
		if dash_timer <= 0.0:
			can_dash = false
	if player.velocity.x ==0:
		statemachine.changeState("idle")
	print("dash_timer:",dash_timer)
func handle_input(event : InputEvent)-> void:
	var player = statemachine.player_ref
	if dash_timer <= 0.0:
		"""
		if player.velocity.x ==0:
			statemachine.changeState("idle")
			"""
		if (Input.is_action_pressed("ui_right") or Input.is_action_just_pressed("ui_left")) or player.velocity.x >0:
				statemachine.changeState("walk")
