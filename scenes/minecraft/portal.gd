extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite3D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# ToDo: Warp smart, warp s-mart
func _on_area_3d_body_entered(body):
	if body is CharacterBody3D:
		# Switch to the specified scene 
		get_tree().change_scene_to_file("res://scenes/minecraft/main.tscn")
