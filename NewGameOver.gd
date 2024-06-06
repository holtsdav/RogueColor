extends Control
var StrTime
@export var time = "00:00"

# Called when the node enters the scene tree for the first time.
func _ready():
	#StrTime = load("res://world.tscn") get_node("/root/World/Label")#.get("time")
	time = get_node("/root/Data_Manager").get("time")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"CenterContainer/VBoxContainer/Time Label".set("text","Time: " + time)
	$"CenterContainer/VBoxContainer/Highscore Label".set("text","Best Time: "  + get_node("/root/Data_Manager").get("Highscore"))
	


func _on_retry_button_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
