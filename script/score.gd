extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

signal score_updated_send_back(text: String)
func _on_tamade_button_collision_button_pressed() -> void:
	text = str(int(text)+1)
	emit_signal("score_updated_send_back", text)
