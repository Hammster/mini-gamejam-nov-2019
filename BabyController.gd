extends Area2D

# Declare member variables here. Examples:
# var a = 2
var baseSpeed = 10
var speed = baseSpeed

# Called when the node enters the scene tree for the first time.
func _process(_delta):
	self.position.x -= speed
	pass # Replace with function body.

func stop():
	speed = 0

func start():
	speed = baseSpeed

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
