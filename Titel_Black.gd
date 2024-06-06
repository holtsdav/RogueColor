extends Label

func _ready():
	update_shader()

func update_shader():
	var rect = self.size.x
	set("shader_parameter/onoff", true)
	set("shader_parameter/label_width", rect)

func _notification(what):
	if what == NOTIFICATION_RESIZED:
		update_shader()
