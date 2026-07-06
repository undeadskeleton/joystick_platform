extends Node

class_name StateInterface

var statemachine : StateMachine

@export Dash_Speed : int = 200
@export var dash_timer : float = 0.6
var can_dash : bool = false
var store_dir : float
func enter()-> void:
	can_dash= true


func physics_process(delta : float)-> void:
	var player = statemachine.player_ref

	if can_dash:
		timer-= delta
		player.velocity.x =

func handle_input(event: InputEvent)-> void:
	pass

func exit()-> void:
	pass
