extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var suit = "hearts"
var number = "2"
var facedown = true
var image

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#self.expand = true
	#refresh()

func refresh():
	var parent = get_parent()
	if facedown:
		image = parent.backtexture
	else:
		image = parent.textures[number + suit]
	#self.set_normal_texture(image)
	#var scale = Vector2(166,242)
	#self.rect_size = scale
	self.update()

func set_suit(s):
	suit = s
	refresh()

func set_number(n):
	number = n
	refresh()

#func _process(delta):
#	pass

func _on_Card_button_down():
	print('down')
