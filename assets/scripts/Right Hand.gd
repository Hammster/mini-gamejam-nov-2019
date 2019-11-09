extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (int) var speed = 1
var velocity = Vector2()
var pinching = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# Processes input for this hand
func get_input():
	#pinching
	if Input.is_action_pressed("pinch_right_hand"):
		$Sprite.frame = 1
		pinching = true
	if Input.is_action_just_released("pinch_right_hand"):
		$Sprite.frame = 0
		pinching = false
	#movement
	velocity = Vector2()
	if Input.is_action_pressed("right_hand_right"):
		position.x += speed
	if Input.is_action_pressed("right_hand_left"):
		position.x -= speed
	if Input.is_action_pressed("right_hand_down"):
		position.y += speed
	if Input.is_action_pressed("right_hand_up"):
		position.y -= speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	$CollisionShape2D.disabled = !pinching
	
	pass
