extends StateInterface

class_name WalkState
@export var Speed : int = 300
func physics_process(delta : float)-> void:
	var player = statemachine.player_ref
	
	if !player.is_on_floor():
		player.velocity.x += 980 * delta
	var direction = Input.get_axis("ui_left","ui_right")
	
	if player.direction.x or direction:
		if player.direction.x:
			player.velocity.x = Speed * player.direction.x
		else :
			player.velocity.x = direction * Speed
	else:
		statemachine.changeState("idle")

func handle_input(event: InputEvent)-> void:
	if Input.is_action_just_pressed("ui_accept"):
		statemachine.changeState("jump")
