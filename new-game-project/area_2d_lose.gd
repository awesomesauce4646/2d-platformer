extends Area2D

func _ready() -> void:
	# Connect the collision signal
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	# Check if the object entering the door is the Player
	if body.is_in_group("Player") or body.name == "Player":
			get_tree().change_scene_to_file("res://lost.tscn")
