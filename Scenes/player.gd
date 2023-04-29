extends CharacterBody3D

@onready var head: Camera3D = $Camera3D

@export_range(0, 1, 0.01) var _camera_sensitivity_x_axis: float = 0.50
@export_range(0, 1, 0.01) var _camera_sensitivity_y_axis: float = 0.50
@export var _invert_y_axis: bool = false
@export var _move_speed: float = 3.0


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _input(event: InputEvent) -> void:
	aim(event)


func _process(delta: float) -> void:
	pass


func _physics_process(delta: float) -> void:
	movement()


func aim(event: InputEvent) -> void:
	var mouse_motion := event as InputEventMouseMotion
	if mouse_motion:
		var x_rotation := mouse_motion.relative.x * _camera_sensitivity_x_axis
		rotation_degrees.y -= x_rotation

		var y_rotation := mouse_motion.relative.y * _camera_sensitivity_y_axis
		var current_tilt: float = head.rotation_degrees.x
		current_tilt -= -y_rotation if _invert_y_axis else y_rotation
		head.rotation_degrees.x = clamp(current_tilt, -90, 90)


func movement() -> void:
	var forward_movement: Vector3 = Vector3.ZERO
	var sideway_movement: Vector3 = Vector3.ZERO

	if Input.is_action_pressed('move_forward'):
		forward_movement = -transform.basis.z
	elif Input.is_action_pressed('move_backward'):
		forward_movement = transform.basis.z

	if Input.is_action_pressed('move_left'):
		sideway_movement = -transform.basis.x
	elif Input.is_action_pressed('move_right'):
		sideway_movement = transform.basis.x

	velocity = (forward_movement + sideway_movement).normalized() * _move_speed
	move_and_slide()
