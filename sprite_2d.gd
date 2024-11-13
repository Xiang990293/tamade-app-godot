extends Sprite2D


var DEFAULT_SCALE: Vector2 = scale
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_tamade_button_collision_change_size() -> void:
	if (scale == DEFAULT_SCALE):
		scale /= 2
