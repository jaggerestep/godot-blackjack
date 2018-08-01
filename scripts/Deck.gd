extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var cards = []

var cardfactoryscene = preload('res://scenes/CardFactory.tscn')

# Called when the node enters the scene tree for the first time.
func _ready():

	var cardfactory = cardfactoryscene.instance()
	call_deferred("add_child", cardfactory)
	cardfactory.createDeck()
	for card in cardfactory.cards:
		card.set_position(self.position + Vector2(cards.size() / 5, cards.size() / 5 ))
		cards.append(card)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
