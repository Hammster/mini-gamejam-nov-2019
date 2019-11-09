extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (int) var speed = 200
var pinching = false
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Processes input for this hand
func get_input():
	#pinching
	if Input.is_action_pressed("pinch_left_hand"):
		$Sprite.frame = 1
		pinching = true
	if Input.is_action_just_released("pinch_left_hand"):
		$Sprite.frame = 0
		pinching = false
	#movement
	velocity = Vector2()
	if Input.is_action_pressed("left_hand_right"):
		velocity.x += 1
	if Input.is_action_pressed("left_hand_left"):
		velocity.x -= 1
	if Input.is_action_pressed("left_hand_down"):
		velocity.y += 1
	if Input.is_action_pressed("left_hand_up"):
		velocity.y -= 1
	velocity = velocity.normalized() * speed	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	pass
