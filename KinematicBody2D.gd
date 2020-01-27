extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var jam = 5
var pie = 5
var velocity = Vector2(1,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity = Vector2(1,0)
		find_node("Duck Sprite").flip_h = true
	if Input.is_action_pressed("ui_left"):	
		velocity = Vector2(-1,0)
		find_node("Duck Sprite").flip_h = false
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2(0,-1)
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2(0,1)
	
	position += velocity

func on_collison():
	print("QUACK!")
	
	
