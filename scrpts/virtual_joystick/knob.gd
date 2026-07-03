extends Sprite2D

class_name joyKnob
@export var parent : VirJoystick
var pressing : bool
@export var maxLength: int =100
@export var deadZone : int = 10
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	parent.button_action = pressing
	if pressing:
		print("parent to mouse : ",parent.global_position.distance_to(get_global_mouse_position()))
		"""
		if parent.global_position.distance_to(get_global_mouse_position()) <= maxLength:
			global_position = get_global_mouse_position()
	else:
		global_position = lerp(global_position,parent.global_position,delta*60)
"""



func _on_button_button_down() -> void:
	pressing= true

func _on_button_button_up() -> void:
	pressing =false
