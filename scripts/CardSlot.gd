extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var color = Color(255,255,255,255)
export(String, "stack", "beside", "below", "grid") var type = "grid"
export(float) var gridwidth = 2.0
var cards = []


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

	
	
func add_card(card):
	cards.append(card)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#unc _process(delta):
	pass
#Vector2(166,242)
var outline = [Vector2(0, 0), Vector2(170, 0), Vector2(170, 246), Vector2(0,246)]

func _draw():
	var outline2 = outline
	if(cards.size() > 1 and type != "stack"):
		
		if type == "beside":
			outline2[1].x = outline[1].x / 2 * cards.size()
			outline2[2].x = outline[2].x / 2 * cards.size()
			
		if type == "below":
			outline2[2].y = outline[2].y / 2 * cards.size()
			outline2[3].y = outline[3].y / 2 * cards.size()
			
		if type == "grid":
			print(cards.size() / gridwidth)
			var height = ceil(cards.size() / gridwidth)
			print(height)
			outline2[1].x = outline[1].x / 2 * cards.size()
			outline2[2].x = outline[2].x / 2 * cards.size()
			if height > 0:
				outline2[2].y = outline[2].y / 2 * height
				outline2[3].y = outline[3].y / 2 * height
	draw_polyline(outline2, color, 4)
	update()
	

