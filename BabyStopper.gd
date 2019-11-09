extends Area2D

# Declare member variables here. Examples:
export(NodePath) var babyPath
export(NodePath) var babyControllerPath
export(NodePath) var beltUpperPath
export(NodePath) var beltLowerPath

var baby = null
var beltUpper = null
var beltLower = null
var babyController = null

# Called when the node enters the scene tree for the first time.
func _ready():
	baby = get_node(babyPath)
	beltLower = get_node(beltLowerPath)
	beltUpper = get_node(beltUpperPath)
	babyController = get_node(babyControllerPath)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BabyStopper_area_entered(area):
	baby.stop()
	print("start")
	$Timer.start(0)
	beltUpper.speed = 0
	beltLower.speed = 0
	babyController.show()
	pass # Replace with function body.


func _on_Timer_timeout():
	baby.start()
	print("stop")
	$Timer.stop()
	beltUpper.speed = beltUpper.storedSpeed
	beltLower.speed = beltLower.storedSpeed
	babyController.hide()
	pass # Replace with function body.
