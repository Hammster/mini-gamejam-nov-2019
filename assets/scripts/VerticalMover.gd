extends Sprite

# Declare member variables here. Examples:
export var speed = 1
var storedSpeed = speed
var storedPos = 0

func _ready():
	storedPos = self.offset.x
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.offset.x = storedPos + (int(self.offset.x + speed) % 63)
	pass
