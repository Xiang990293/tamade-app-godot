extends RigidBody2D

# Reference to AudioStreamPlayer2D
#@onready var audio_player = $AudioStreamPlayer2D
#@onready var button = $Node2D/tamade_button

func _ready() -> void:
	pass

var target_pos = Vector2(0.0,0.0)
var score = 0
@export var phase: int = 0

func _process(delta: float) -> void:
	if(phase == 1):
		move_and_collide(delta*(score-20)*(target_pos-position))
		
#func _physics_process(delta: float) -> void:
	#if(phase == 2):
		#set_position(get_position()+(target_pos-get_position())*delta/0.1)
	#elif(phase == 1):
		##set_position(get_position()+front*delta*int($"res://score.tscn".text))
		#pass
	#else:
		#pass
		
func pick_random_coordinate() -> void:
	var win_size=get_window().size
	var size = $tamade_button_shape.polygon[2]
	target_pos = Vector2(randf_range(0, win_size[0]-size[0]*scale[0]),randf_range(0, win_size[1]-size[1]*scale[1]))
	
func pick_random_direction() -> Vector2:
	var angle = rad_to_deg(randf_range(0, 2*PI))
	return Vector2(cos(angle),sin(angle))

signal button_pressed
func _on_texture_button_pressed() -> void:
	emit_signal("button_pressed")

signal change_size
func _on_score_score_updated_send_back(text) -> void:
	score = int(text)
	if(score > 60):
		phase = 2
	elif(score > 20):
		phase = 1
	else:
		phase = 0
	
	if(phase == 1):
		linear_velocity=Vector2(0.0,0.0)
		pick_random_coordinate()
		emit_signal("change_size")
	elif(phase == 2):
		if (score-60)%10 == 1:
			linear_velocity = 10*(score-60)*pick_random_direction()
	else:
		pass
	pass # Replace with function body.
