extends Control

var DEFAULT_MIN_SIZE = custom_minimum_size
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_tamade_button_collision_change_size() -> void:
	if custom_minimum_size == DEFAULT_MIN_SIZE:
		custom_minimum_size/=2
		scale/=2
