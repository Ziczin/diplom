class_name Player
extends CharacterBody2D

var speed = Preferences.base_speed

func _process(delta):
	var text = "{pos}"
	$Debug/VBox/Coords.set_text(text.format({"pos": round(position/speed)}))

