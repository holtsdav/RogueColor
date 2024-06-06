extends Line2D

@export var length = 50
var point = Vector2()

func _ready():
	set_as_top_level(true)  # Corrected function name

func _process(delta):
	point = get_parent().global_position
	add_point(point)
	while get_point_count() > length:
		remove_point(0)
