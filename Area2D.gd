extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var baby = null

# Called when the node enters the scene tree for the first time.
func _ready():
	baby = get_node("/Baby")
	pass # Replace with function body.

func destroyBaby ():
	baby.position.x = 1200
	print("counter up")
	pass