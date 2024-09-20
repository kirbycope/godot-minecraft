extends Node3D


## Called when the node enters the scene tree for the first time.
func _ready() -> void:

	# Disable the mouse pointer and capture the motion
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

	# Make sure the game is unpaused
	Globals.game_paused = false

	# Put the player in first-person perspective
	$Player3D.perspective = 1

	# Set camera's position
	$Player3D/CameraMount/Camera3D.position = Vector3(0.0, 0.0, 0.0)

	# Align visuals with the camera
	$Player3D/Visuals.rotation = Vector3(0.0, 0.0, $Player3D/CameraMount.rotation.z)
