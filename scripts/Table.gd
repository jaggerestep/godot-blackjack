extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var deck



# Called when the node enters the scene tree for the first time.
func _ready():
	
			
	var deckscene = preload('res://scenes/Deck.tscn')
	deck = deckscene.instance()
	
	call_deferred("add_child", deck)
	deck.position = Vector2(200,200)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
