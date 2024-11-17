extends CollisionPolygon2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var full_size: Vector2 = get_window().size
	var scaleing: Vector2 = full_size/polygon[3]
	for index in range(polygon.size()):
		polygon[index] *= scaleing


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
