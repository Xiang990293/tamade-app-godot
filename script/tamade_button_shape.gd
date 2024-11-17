extends CollisionPolygon2D

var DEFAULT_POLYGON: PackedVector2Array = polygon
func _ready() -> void:
	#var full_size: Vector2 = get_window().size
	#var scaleing: float = min(full_size.x/polygon[2].x, full_size.y/polygon[2].y)
	#print("collision size:",scaleing, ", ", full_size.x/polygon[2].x,",", full_size.y/polygon[2].y)
	#for index in range(polygon.size()):
		#polygon[index] *= scaleing
	#
	pass
	

func _process(delta: float) -> void:
	pass

func _on_tamade_button_collision_change_size() -> void:
	if polygon == DEFAULT_POLYGON:
		var middle = polygon[2]/2
		for index in range(polygon.size()):
			polygon[index] += (middle-polygon[index])/2 # let the vertex scale down to the middle instead of top-left corner
