extends StateInterface

class_name DashState

@export var Dash_SPEED : int = 200
@export var dash_timer : float = 0.6
var can_dash : bool = false
var dash_duration : float 

func enter()-> void:
	can_dash = true
	dash_duration = dash_timer

func physics_process(delta : float)-> void:
	var player = statemachine.player_ref
	
	if can_dash:
		dash_duration-=delta
		player.velocity.x = statemachine.last_dir * Dash_SPEED
		if dash_duration <=0:
			player.velocity.x = move_toward(player.velocity.x,0,50)
			statemachine.changeState("idle")
	
	

func handle_input(event : InputEvent)-> void:
	var player = statemachine.player_ref
	if dash_duration <= 0.0:
		if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right"):
			statemachine.changeState("walk")
		
func exit()-> void:
	can_dash = false
