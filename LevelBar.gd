extends ProgressBar
var XP = 0
var maxXP = 3
var Level = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set("value", XP)
	set("max_value", maxXP)
	$LevelLabel.set("text","Level: "+str(Level))
	if Level < 10:
		maxXP = 3
	elif Level < 30:
		maxXP = 5
	elif Level < 50:
		maxXP = 10
	elif Level < 100:
		maxXP = 20
	elif Level < 200:
		maxXP = 30
	elif Level < 10000:
		get_node("/root/World").set("lvl200",true)
		maxXP = 50
		
	if XP >= maxXP:
		Level += 1
		_lvl_up()
		XP = 0
	
	
	
func _lvl_up():
	get_node("/root/World/CanvasLayer/UI/Upgrade_UI").show()
	get_tree().paused = true
	
