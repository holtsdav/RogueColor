extends Area2D

var isCollected = false
var touchingPlayer = false
var speed = 800

signal XP_Collected

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("XP")
	add_to_group("Items")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if isCollected == true:
		var player_node = get_node("/root/World/Player")
		var player_position = player_node.position
		var direction = (player_position - global_position).normalized()
		global_position += direction * speed * delta
		if touchingPlayer == true:
			queue_free()

func _on_body_entered(body):
	if body.name == "Player":
		var XP = get_node("/root/World/CanvasLayer/UI/LevelBar").get("XP")
		get_node("/root/World/CanvasLayer/UI/LevelBar").set("XP", XP + 1)
		touchingPlayer = true
		emit_signal("XP_Collected")

