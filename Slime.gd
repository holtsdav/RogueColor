extends CharacterBody2D

var damage = 1
var isTimerOver = false
signal Damage
signal Died

var Speed = 400
const Category = "Enemy"
@export var colorwhite = true
@export var health = 2
var isDead = false
var p
var a = false
var b = false
var c = null
var d = false

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Enemy")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if d == true:
		var Player = get_node("/root/World/Player")
		var direction = global_position.direction_to(Player.global_position + Vector2(0, -100))
		velocity = direction * Speed
		move_and_slide()
		if direction.x >= 0:
			$AnimatedSprite2D.flip_h = false
		elif direction.x < 0:
			$AnimatedSprite2D.flip_h = true

func _on_area_2d_area_entered(area):
	if colorwhite == true && area.get("target_group") == "WhiteEnemies":
		if not area.get_parent().is_in_group("Enemy"):
			health -= damage
	if colorwhite == false && area.get("target_group") == "BlackEnemies":
		if not area.get_parent().is_in_group("Enemy"):
			health -= damage
	if health <= 0 and isDead == false:
		isDead = true
		var timer := Timer.new()
		add_child(timer)
		timer.wait_time = 0.5
		timer.one_shot = true
		timer.start()
		timer.connect("timeout", Callable(self, "_on_timer_timeout"))
		Speed = 0
		$AnimatedSprite2D.scale = Vector2(2, 2)
		$Area2D/CollisionShape2D.call_deferred("set", "disabled", true)
		self.call_deferred("_handle_death")

func _handle_death():
	self.position += Vector2(0, 100)
	remove_from_group("WhiteEnemies")
	remove_from_group("BlackEnemies")
	remove_from_group("Enemies")
	var XP = preload("res://XP.tscn").instantiate()
	$AnimatedSprite2D.animation = "death"
	add_sibling(XP)
	XP.position = self.position

func _on_timer_timeout() -> void:
	queue_free()

func _on_death_timer_timeout():
	queue_free()

func spawn_enemy(position):
	if not a:
		$Spawn_Timer.start()
		a = true
	p = position
	if c == null:
		c = p

func _on_spawn_timer_timeout():
	if $AnimatedSprite2D.material.get("shader_parameter/onoff"):
		add_to_group("BlackEnemies")
		colorwhite = false
	else:
		add_to_group("WhiteEnemies")
		colorwhite = true
	if not b:
		global_position = c
		d = true
		b = true
		var color = randf()
