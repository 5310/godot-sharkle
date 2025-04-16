extends Node2D

func _ready():
	get_tree().get_root().set_transparent_background(true)
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_TRANSPARENT, true, 0)
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true, 0)
	DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_ALWAYS_ON_TOP, true, 0)
	DisplayServer.window_set_mouse_passthrough($passthrough.polygon)
	
	$sprite.play("idle")

func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
				match event.button_index:
						MOUSE_BUTTON_LEFT:
							DisplayServer.window_start_drag(0)
						MOUSE_BUTTON_MIDDLE:
							get_tree().quit()
