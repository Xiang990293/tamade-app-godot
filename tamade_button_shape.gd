extends CollisionPolygon2D

var DEFAULT_POLYGON: PackedVector2Array = polygon
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func _on_tamade_button_collision_change_size() -> void:
	if polygon == DEFAULT_POLYGON:
		var middle = Vector2(0,0)
		for vertex in polygon:
			middle += vertex
		middle /= polygon.size()
		for index in range(polygon.size()):
			polygon[index] += (middle-polygon[index])/2 # let the vertex scale down to the middle instead of top-left corner
