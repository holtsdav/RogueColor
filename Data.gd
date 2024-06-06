extends Node
@export var time = "0:00"
@export var Highscore = "0:00"
@export var Minutes = 0
@export var Seconds = 0
var volume_db = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var t = int(Highscore)
	if int(time) >= int(Highscore):
		Highscore = time
