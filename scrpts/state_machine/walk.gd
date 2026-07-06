extends StateInterface

class_name WalkState
@export var Speed : int = 300
var direction : int
var store_dir : float
func physics_process(delta : float)-> void:
	var player = statemachine.player_ref

	if !player.is_on_floor():
		player.velocity.x += 980 * delta
		direction = Input.get_axis("ui_left","ui_right")
	store_dir  = 0.0
	if player.direction.x or direction:
		if player.direction.x:
			player.velocity.x = Speed * player.direction.x
			store_dir = player.velocity.x
		else :
			player.velocity.x = direction * Speed
			store_dir = direction
	else:
		statemachine.last_dir = store_dir
		statemachine.changeState("idle")

func handle_input(event: InputEvent)-> void:
	if Input.is_action_just_pressed("ui_accept"):
		statemachine.last_dir = store_dir
		statemachine.changeState("jump")
	if Input.is_action_just_pressed("dash")
