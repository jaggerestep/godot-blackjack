extends Node

var suits = ["hearts", "clubs", "spades", "diamonds"]
var numbers = ["ace", "2", "3","4","5","6","7","8","9","10","jack","queen","king"]
var textures = {}
var backtexture = preload('res://assets/back.png')
var cardscene = preload('res://scenes/Card.tscn')


var cards = []

func _ready():
	for suit in suits:
		for number in numbers:
			textures[number + suit] = load('res://assets/%s_of_%s.png' % [number, suit])

func createDeck():
	for suit in suits:
		for number in numbers:
			var card = cardscene.instance()
			
			call_deferred("add_child", card)
			card.facedown = true
			card.suit = suit
			card.number = number
			card.add_to_group(suit)
			card.add_to_group(number)
			cards.append(card)
			
func createCard(number = "2", suit = "hearts"):
	var card = cardscene.instance()
			
	call_deferred("add_child", card)
	card.facedown = true
	card.suit = suit
	card.number = number
	card.add_to_group(suit)
	card.add_to_group(number)
	cards.append(card)
	
	return card