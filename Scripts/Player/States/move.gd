extends PlayerState

# Moving params with directions
var moving_actions = {
	"UP": Vector2(0, -1),
	"DOWN": Vector2(0, 1),
	"LEFT": Vector2(-1, 0),
	"RIGHT": Vector2(1, 0),
}
func enter(_msg: Dictionary = {}):
	$"../../Debug/VBox/State".set_text(name)

func inner_process(_delta):
	var dir_count = 0
	for direction in moving_actions:
		if Input.is_action_pressed(direction):
			player.velocity += moving_actions[direction]
			dir_count += 1
			
	if dir_count == 0:
		state_machine.change_to("idle")
		
	if dir_count % 2 == 0:
		player.velocity *= 0.5**0.5
	
	player.velocity *= player.speed
	player.move_and_slide()
	player.velocity = Vector2.ZERO

