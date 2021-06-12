extends KinematicBody2D

const UP = Vector2(0,-1)
const GRAVITY = 20
const MFALLSP = 400
const MSPEED = 120
const JUMPFORCE = 600
const ACCEL = 10

var motion = Vector2()
func _ready():
	pass

func _physics_process(delta):
	motion.y += GRAVITY
	if motion.y > MFALLSP:
		motion.y = MFALLSP
	motion.x = clamp(motion.x,-MSPEED,MSPEED)
	if Input.is_action_pressed("ui_right"):
		motion.x += ACCEL
	elif Input.is_action_pressed("ui_left"):
		motion.x -= ACCEL
	else:
		motion.x = lerp(motion.x,0,0.2)
		
	motion = move_and_slide(motion,UP)
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):
			motion.y = -JUMPFORCE
	pass
