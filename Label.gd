extends Label
var Seconds = 00
var Minutes = 00
var isDead = false
@export var time = "0:00"


# Called when the node enters the scene tree for the first time.
func _ready():
	var timer := Timer.new()
	add_child(timer)
	timer.wait_time = 1
	timer.autostart = true
	timer.start()
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Seconds >= 60:
		Minutes +=01
		Seconds = 00
	var StrgSeconds = type_convert(Seconds,TYPE_STRING)
	var StrgMinutes = type_convert(Minutes,TYPE_STRING)
	if Seconds < 10:
		get_node("/root/World/Timer_Label").set("text",StrgMinutes + ":0" + StrgSeconds)
		time = StrgMinutes + ":0" + StrgSeconds
	else:
		get_node("/root/World/Timer_Label").set("text",StrgMinutes + ":" + StrgSeconds)
		time = StrgMinutes + ":" + StrgSeconds
	$Highscore.set("text", "Best Time: " + get_node("/root/Data_Manager").get("Highscore"))

func _on_timer_timeout():
	if isDead == false:
		Seconds += 01


func _on_player_death():
	isDead = true
