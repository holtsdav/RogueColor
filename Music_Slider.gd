extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if value == -30:
		get_node("/root/MainMusic").set("volume_db", -100)
	else:
		get_node("/root/MainMusic").set("volume_db", value)
