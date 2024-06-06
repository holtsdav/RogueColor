extends Control
var isShown = false
var isEnabled = false
var isPaused = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("Pause"):
		if isPaused == false:
			isPaused = true
			get_tree().paused = true
			show()
			isShown = true
			$"../Info".visible = true
		elif isPaused == true: 
			isPaused = false
			get_tree().paused = false
			hide()
			if isEnabled == true:
				$"../Info".visible = true
			elif isEnabled == false:
				$"../Info".visible = false
		


func _on_resume_pressed():
	get_tree().paused = false
	hide()
	if isEnabled == true:
		$"../Info".visible = true
	elif isEnabled == false:
		$"../Info".visible = false


func _on_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Main_Menu.tscn")


func _on_enable_toggled(toggled_on):
	if toggled_on:
		isEnabled = true
	else:
		isEnabled = false
