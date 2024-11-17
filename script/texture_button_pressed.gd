extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#pivot_offset = size/2
	$"../..".contact_monitor = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _pressed() -> void:
	$"../../AudioStreamPlayer2D".play()
