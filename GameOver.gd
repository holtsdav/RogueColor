extends Node2D
var isPressed = false
var StrTime = "0:00"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get("visible") == true && isPressed == true:
		set("visible",false)
		get_node("/root/World/Player/Retry").set("visible", false)
		get_tree().reload_current_scene()
	if get("visible") == true:
		get_node("/root/World/Player/Retry").set("position", Vector2(-129.25,75))
		get_node("/root/World/Player/Retry").set("visible", true)
		StrTime = get_node("/root/World/Label").get("time")
		$Label.set("text","Game Over
		Current Time: " 
		+ StrTime)

func _on_button_pressed():
	isPressed = true
