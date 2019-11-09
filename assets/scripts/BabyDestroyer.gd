extends Area2D

var counter = 0

# Declare member variables here. Examples:
# var a = 2
var baby = null
var babyControler = null

export(NodePath) var babyPath
export(NodePath) var babyControlerPath

# Called when the node enters the scene tree for the first time.
func _ready():
	baby = get_node(babyPath)
	babyControler = get_node(babyControlerPath)
	$Label.text = String(counter)
	pass # Replace with function body.

func destroyBaby ():
	baby.position.x = 1200
	if babyControler.done == true:
		counter += 1
		$Label.text = String(counter)
	babyControler.reset()
	pass

func _on_BabyDestroyer_area_entered(area):
	destroyBaby()
	pass # Replace with function body.
