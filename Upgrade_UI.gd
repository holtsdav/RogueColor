extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _Button_Pressed():
	hide()
	get_tree().paused = false

func _on_button_1_pressed():
	$AudioStreamPlayer.set("volume_db",get_node("/root/Data_Manager").get("volume_db"))
	$AudioStreamPlayer.play()
	_Button_Pressed()


func _on_button_2_pressed():
	$AudioStreamPlayer.set("volume_db",get_node("/root/Data_Manager").get("volume_db"))
	$AudioStreamPlayer.play()
	_Button_Pressed()


func _on_button_3_pressed():
	$AudioStreamPlayer.set("volume_db",get_node("/root/Data_Manager").get("volume_db"))
	$AudioStreamPlayer.play()
	_Button_Pressed()
