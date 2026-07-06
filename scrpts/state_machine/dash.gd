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

func handle_input(event : InputEvent)-> void:
	if dash_timer<= 0.0:
		if Input.is_action_pressed("ui_right") or Input.is_action_just_pressed("ui_left"):
			statemachine.changeState("walk")
		statemachine.changeState("idle")
