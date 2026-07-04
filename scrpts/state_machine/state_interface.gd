extends Node

class_name StateInterface

var statemachine : StateMachine

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func enter()-> void:
	pass

func process(delta : float)-> void:
	pass

func physics_process(delta : float)-> void:
	pass

func handle_input(event: InputEvent)-> void:
	pass

func exit()-> void:
	pass
