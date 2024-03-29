extends Node2D

var steps_done = 0
var done = false
var babySprite = null
export(NodePath) var babySpritePath

# Called when the node enters the scene tree for the first time.
func _ready():
	babySprite = get_node(babySpritePath)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if steps_done == 3:
		done = true
		babySprite.frame = 1
		print("done")
	pass

func hide():
	self.visible = false
	pass

func reset():
	steps_done = 0
	$Dot/Sprite.frame = 0
	$Dot2/Sprite.frame = 0
	$Dot3/Sprite.frame = 0
	babySprite.frame = 0
	done = false

func show():
	self.visible = true
	pass

func _on_Dot_step_done():
	steps_done += 1
	pass # Replace with function body.
