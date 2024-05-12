# idle.gd
extends PlayerState

var moving_actions = ["UP", "DOWN", "LEFT", "RIGHT"]

func enter(_msg: Dictionary = {}):
	player.velocity = Vector2.ZERO
	$"../../Debug/VBox/State".set_text(name)
	

func inner_process(_delta):
	for action in moving_actions:
		if Input.is_action_pressed(action):
			state_machine.change_to("move")
			return
	

