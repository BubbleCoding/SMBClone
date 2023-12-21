extends CharacterBody2D
@onready var ray_right = $RayRight
@onready var ray_left = $RayLeft


var speed = 300.0
var sprintSpeed = 500.0
var gravity = 400.0
var jumpSpeed = -400
var currentSpeed = 0
var spawnPosition = null

func _ready():
	spawnPosition = position

func _physics_process(delta):
		
	if Input.is_action_pressed("sprint"):
		currentSpeed = sprintSpeed
	else:
		currentSpeed = speed
	if !is_on_floor() and !is_on_wall():
		if Input.is_action_pressed("left") and velocity.x > -currentSpeed:
			velocity.x += -10
		elif Input.is_action_pressed("right") and velocity.x < currentSpeed:
			velocity.x += 10
			
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			velocity.y = jumpSpeed
		if Input.is_action_pressed("left"):
			velocity.x = -currentSpeed
		elif Input.is_action_pressed("right"):
			velocity.x = currentSpeed
		else:
			velocity.x = lerp(velocity.x, 0.0, 0.1)
	if ray_right.is_colliding() or ray_left.is_colliding():
		velocity.y += delta * gravity
		if Input.is_action_just_pressed("jump"):
			velocity.y = jumpSpeed
			if ray_right.is_colliding():
				velocity.x = jumpSpeed
			if ray_left.is_colliding():
				velocity.x = -jumpSpeed
	else:
		velocity.y += delta * gravity
	move_and_slide()

func death():
	position = spawnPosition
	velocity = Vector2(0,0)
