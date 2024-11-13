extends Node


func _ready():
	# Assuming you have instances of your RigidBody2D in the scene
	for body in get_children():
		if body.is_in_group("pickable"):  # Use groups if necessary
			body.connect("clicked", self._on_body_clicked)

func _on_body_clicked(body):
	print("Clicked on body: ", body.name)
	# Add logic for what happens when the body is clicked
