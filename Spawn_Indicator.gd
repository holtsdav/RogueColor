extends Sprite2D
signal TimeOut

# Properties
var min_scale = Vector2(0.06, 0.06)
var max_scale = Vector2(0.15, 0.15)
var pulse_duration = 1.0  # Duration of one pulse cycle in seconds
var scale_direction = 1  # 1 for increasing scale, -1 for decreasing scale
var current_scale = min_scale  # Initial scale

# Called every frame
func _process(delta: float):
	# Calculate the scale increment based on the pulse duration
	var scale_increment = (max_scale - min_scale) * delta / pulse_duration
	
	# Update the current scale
	current_scale += scale_increment * scale_direction
	
	# Check if the scale exceeds the limits
	if current_scale.x <= min_scale.x or current_scale.x >= max_scale.x:
		# Reverse the scale direction
		scale_direction *= -1
	
	# Clamp the scale within the limits
	current_scale.x = clamp(current_scale.x, min_scale.x, max_scale.x)
	current_scale.y = clamp(current_scale.y, min_scale.y, max_scale.y)
	
	# Apply the new scale
	set_scale(current_scale)
	
	
func _ready():
	add_to_group("Enemy")
	hide()


func _on_timer_timeout():
	emit_signal("TimeOut", global_position)
	hide()

func spawn_indicator(position):
	global_position = position
	show()
	$Timer.wait_time = 2
	$Timer.start()

