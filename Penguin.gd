extends Node2D

onready var bodySprite = $CompositeSprites/Body
onready var hairSprite = $CompositeSprites/Hair
onready var eyeSprite = $CompositeSprites/Eye
onready var clothesrSprite = $CompositeSprites/Clothes
onready var shoesSprite = $CompositeSprites/Shoes

const composite_sprites = preload("res://CompositeSpritesheets/CompositeSprites.gd")

var curr_hair: int = 0
func _ready():
	bodySprite.texture = composite_sprites.body_spritesheet[0]
	hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]


func _on_ChangeHair_pressed():
	curr_hair = (curr_hair+1) % composite_sprites.hair_spritesheet.size()
	hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]
	pass # Replace with function body.
