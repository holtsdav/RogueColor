extends Node2D
var Knife_cooldown = 1
var Speed = 1000
var Knife_Lifetime = 1
var twoBullets = false
var Knife_Size = 1
var Knife_Scale = 1

var curColorW = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass  # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Timer_Knife_Attack.get("wait_time") != Knife_cooldown:
		$Timer_Knife_Attack.set("wait_time",Knife_cooldown)

func _on_timer_knife_attack_timeout():
	var new_knife = preload("res://Knife.tscn").instantiate()
	var knife_child = new_knife.get_child(0)
	var original_material = knife_child.material
	var unique_material = original_material.duplicate()
	knife_child.material = unique_material
	var Player = get_node("/root/World/Player")
	new_knife.global_position = Player.global_position
	
	var target_group = "Enemies"
	if curColorW:
		unique_material.set("shader_parameter/onoff", true)
		target_group = "WhiteEnemies"
	elif curColorW == false :
		unique_material.set("shader_parameter/onoff", false)
		target_group = "BlackEnemies"
	
	# Set the knife's target group using the custom method
	new_knife.call("set_target_group", target_group)
	new_knife.set("speed",Speed)
	new_knife.set("Lifetime",Knife_Lifetime)
	new_knife.set("scale", Vector2(4,4) * Knife_Size)
	Knife_Scale = new_knife.get("scale").x
	add_child(new_knife)
	
	if twoBullets == true:
		var new_knife2 = preload("res://Knife.tscn").instantiate()
		var knife_child2 = new_knife2.get_child(0)
		var original_material2 = knife_child2.material
		var unique_material2 = original_material2.duplicate()
		knife_child2.material = unique_material2
		new_knife2.global_position = Player.global_position + Vector2(0,-50)
		var target_group2 = "Enemies"
		if curColorW:
			unique_material2.set("shader_parameter/onoff", true)
			target_group2 = "WhiteEnemies"
		elif curColorW == false :
			unique_material2.set("shader_parameter/onoff", false)
			target_group2 = "BlackEnemies"
		
		
		# Set the knife's target group using the custom method
		new_knife2.call("set_target_group", target_group)
		new_knife2.set("speed",Speed)
		new_knife2.set("Lifetime",Knife_Lifetime)
		new_knife2.set("scale", new_knife2.get("scale")* Knife_Size)
		add_child(new_knife2)

func _on_player_color_black():
	curColorW = false

func _on_player_color_white():
	curColorW = true
