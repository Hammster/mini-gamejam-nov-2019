extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += 1
	pass


func _on_Area2D2_area_entered(area):
	$ColorRect.color = Color(255,0,0)
	pass # Replace with function body.
