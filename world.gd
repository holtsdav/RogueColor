extends Node2D

var Wave = 1
var timerIs = 3
var damage = 1
var tim = 1
var health = 2
var lvl200 = false

func spawn_mob(mob_type: String):
	
	var indicator = preload("res://Spawn_Indicator.tscn").instantiate()
	var enemy = preload("res://Slime.tscn").instantiate()
	var i_original_material = indicator.material
	var i_unique_material = i_original_material.duplicate()
	indicator.material = i_unique_material
	
	var isWhite = true
	var color = randf()
	if color <= 0.49:
		i_unique_material.set("shader_parameter/onoff", false)
		isWhite = true
	elif color > 0.49:
		i_unique_material.set("shader_parameter/onoff", true)
		isWhite = false
		
		
	var e_original_material = enemy.get_node("AnimatedSprite2D").material
	var e_unique_material = e_original_material.duplicate()
	enemy.get_node("AnimatedSprite2D").material = e_unique_material
	
	if isWhite == true:
		e_unique_material.set("shader_parameter/onoff", false)
	elif isWhite == false:
		e_unique_material.set("shader_parameter/onoff", true)
	enemy.set("damage", damage)
	enemy.set("health", enemy.get ("health")* tim)
	add_child(indicator)
	add_child(enemy)
	health = enemy.get ("health")
	%PathFollow2D.progress_ratio = randf()
	indicator.spawn_indicator(%PathFollow2D.global_position)
	enemy.spawn_enemy(%PathFollow2D.global_position + Vector2(0,-100))
	
	
func _on_timer_timeout():
	spawn_mob("Slime")
	Wave += 1
	if Wave >= 10:
		spawn_mob("Slime")
	if Wave >= 20:
		spawn_mob("Slime")
	if Wave >= 25:
		if timerIs > 2:
			$Spawn_Timer.set("wait_time",2 )
			timerIs = 2
	if Wave >= 40:
		spawn_mob("Slime")
	if Wave >= 50:
		spawn_mob("Slime")
		if $Spawn_Timer.get("wait_time") > 0.5:
			$Spawn_Timer.set("wait_time",$Spawn_Timer.get("wait_time") - 0.1 )
			timerIs = $Spawn_Timer.get("wait_time")
	if Wave >= 70:
		spawn_mob("Slime")
		spawn_mob("Slime")
	if lvl200 == true:
		spawn_mob("Slime")
		spawn_mob("Slime")
		spawn_mob("Slime")
		spawn_mob("Slime")
		spawn_mob("Slime")
		spawn_mob("Slime")
		spawn_mob("Slime")
		spawn_mob("Slime")


func _Time_Out():
	var new_slime = preload("res://Slime.tscn").instantiate()
	new_slime.global_position = %Player.global_position
	add_child(new_slime)


func _on_button_1_pressed():
	pass # Replace with function body.


func _on_slime_wait_timeout():
	$Slime_increase.start()
	$Slime_increase.set("autostart", true)

func _on_slime_increase_timeout():
	tim = tim * 2
