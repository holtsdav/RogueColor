extends CharacterBody2D
var Speed = 600
var Ability = false
var maxHealth = 3
var Health = 3
var tempHealth = 3
var overlapMob
@export var curColor = "white"
signal Color_Black
signal Color_White
signal Death
var XP = 0
signal XP_Collected
var healthRegen = 0
var RegenEnabled = false
var DAMAGE_RATE

# Called when the node enters the scene tree for the first time.
func _ready():
	var trail = get_node("/root/World/Player/Line2D")
	trail.set_default_color("ffffff")
	$"../Filter".material.set("shader_parameter/onoff", false)
	$AnimatedSprite2D.material.set("shader_parameter/onoff", false)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if RegenEnabled == false:
		RegenEnabled = true
		var timer := Timer.new()
		add_child(timer)
		timer.wait_time = 1
		timer.one_shot = false
		timer.autostart = true
		timer.start()
		timer.connect("timeout", Callable(self, "_on_Regen_timer_timeout"))		
	if Health > maxHealth:
		Health = maxHealth
	$ProgressBar.max_value = maxHealth
	$ProgressBar.value = Health
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * Speed
	move_and_slide()
	if direction == Vector2(1,0):
		$AnimatedSprite2D.play("idle_right", 1.0,false )
	elif direction == Vector2(-1,0):
		$AnimatedSprite2D.play("idle_left", 1.0,false )
	elif direction == Vector2(0,1):
		$AnimatedSprite2D.play("idle_down", 1.0,false )
	elif direction == Vector2(0,-1):
		$AnimatedSprite2D.play("idle_up", 1.0,false )
	
	var overlapping_mobs = %HurtBox.get_overlapping_bodies()
	DAMAGE_RATE = 2.0 * get_node("/root/World/").get("tim")
	if overlapping_mobs.size() > 0:
		overlapMob = overlapping_mobs
		Health -= DAMAGE_RATE * overlapping_mobs.size() * delta
		$ProgressBar.value = Health
		$"../Filter".material.set("shader_parameter/onoff", true)
		var timer := Timer.new()
		add_child(timer)
		timer.wait_time = 0.2
		timer.one_shot = true
		tempHealth = Health
		timer.start()
		timer.connect("timeout", Callable(self, "_on_shader_timer_timeout"))
		if Health <= 0.0:
			#get_node("/root/World/Player/GameOver").set("visible", true)
			Speed = 0
			emit_signal("Death")
			var time = get_node("/root/World/Timer_Label").get("time")
			#var GameOver = load("res://GameOver.tscn")
			#GameOver.set("time", time)
			
			get_node("/root/Data_Manager").set("time",time)
			
			
			get_tree().change_scene_to_file("res://GameOver.tscn")
	if Ability == false:
		emit_signal("Color_White")
	elif Ability == true:
		emit_signal("Color_Black")

func _input(event):
	if event.is_action_pressed("E"):
		if Ability == false:
			$AnimatedSprite2D.material.set("shader_parameter/onoff", true)
			var bg = get_node("/root/World/BG")
			var trail = get_node("/root/World/Player/Line2D")
			#trail.set_default_color("000000")
			bg.material.set("shader_parameter/onoff", true)

			Ability = true
			
		elif Ability == true:
			$AnimatedSprite2D.material.set("shader_parameter/onoff", false)
			var bg = get_node("/root/World/BG")
			bg.material.set("shader_parameter/onoff", false)
			var trail = get_node("/root/World/Player/Line2D")
			#trail.set_default_color("ffffff")
			Ability = false
			
var exit = false
func _on_shader_timer_timeout():
	if exit == true:
		$"../Filter".material.set("shader_parameter/onoff", false)


func _on_hurt_box_body_exited(body):
		exit = true



func _on_pickup_range_area_entered(area):
	var groups = area.get_groups()
	for group in groups:
		if group == "XP":
			area.set("isCollected",true)

func _on_Regen_timer_timeout():
	Health += healthRegen
