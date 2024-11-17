extends Sprite2D


var DEFAULT_SCALE: Vector2 = scale
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var full_size: Vector2 = get_window().size
	scale *= min(full_size.x / 640,$"../Control".custom_minimum_size.x/640)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_tamade_button_collision_change_size() -> void:
	if (scale == DEFAULT_SCALE):
		scale /= 2
