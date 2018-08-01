extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func drag_window(event):
	print("Clicked")
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.doubleclick:
				toggle_window()
			if event.pressed:
				drag_start = true
				button_overlay.set_modulate("8bff00")
			else:
				drag_start = false

	elif event is InputEventMouseMotion:
		if drag_start:
			#Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
			$button_overlay.set_modulate(Color("a7ff91"))
			var new_pos = get_global_mouse_position()
			var new_rect=Rect2(new_pos, get_parent().rect_size)
			#This nicely checks if the rect is in the viewport, but odnt need it.
			#if get_viewport_rect().encloses(new_rect):
			get_parent().rect_global_position = new_pos
			#else:
			#$button_overlay.set_modulate(Color("a2ff8b"))
			#	drag_start = false
			#Vector2(265,15)#update()

func _on_drag_bar_gui_input(event):
	drag_window(event)
	get_parent().raise()

var drag_start
#var lobby_scene = load("res://lobby.tscn")
onready var button_overlay = get_node("button_overlay")


