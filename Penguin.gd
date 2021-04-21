extends Node2D

onready var bodySprite = $CompositeSprites/Body
onready var hairSprite = $CompositeSprites/Hair
onready var eyeSprite = $CompositeSprites/Eye
onready var clothesSprite = $CompositeSprites/Clothes
onready var shoesSprite = $CompositeSprites/Shoes

const composite_sprites = preload("res://CompositeSpritesheets/CompositeSprites.gd")

var curr_hair: int = 0
var curr_eye: int = 0
var curr_clothes: int = 0
var curr_shoes: int = 0
func _ready():
	bodySprite.texture = composite_sprites.body_spritesheet[0]
	hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]
	eyeSprite.texture = composite_sprites.eye_spritesheet[curr_eye]
	clothesSprite.texture = composite_sprites.clothes_spritesheet[curr_clothes]
	shoesSprite.texture = composite_sprites.shoes_spritesheet[curr_shoes]


func _on_ChangeHair_pressed():
	curr_hair = (curr_hair+1) % composite_sprites.hair_spritesheet.size()
	hairSprite.texture = composite_sprites.hair_spritesheet[curr_hair]
	pass # Replace with function body.


func _on_ChangeEyes_pressed():
	curr_eye = (curr_eye+1) % composite_sprites.eye_spritesheet.size()
	eyeSprite.texture = composite_sprites.eye_spritesheet[curr_eye]
	pass # Replace with function body.


func _on_ChangeClothes_pressed():
	curr_clothes = (curr_clothes+1) % composite_sprites.clothes_spritesheet.size()
	clothesSprite.texture = composite_sprites.clothes_spritesheet[curr_clothes]
	pass # Replace with function body.


func _on_ChangeShoes_pressed():
	curr_shoes = (curr_shoes+1) % composite_sprites.shoes_spritesheet.size()
	shoesSprite.texture = composite_sprites.shoes_spritesheet[curr_shoes]
	pass # Replace with function body.
