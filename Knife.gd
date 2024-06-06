extends Area2D

# The target group changes based on the player's color
@export var target_group = "WhiteEnemies"  # Default target group

# Bullet speed
@export var speed = 1000.0
var Lifetime = 1
var spawnPosition

func _ready():
	spawnPosition = self.global_position
	set_physics_process(true)
	shoot()
	var timer := Timer.new()
	add_child(timer)
	timer.wait_time = Lifetime
	timer.one_shot = true
	timer.start()
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))

func set_target_group(group):
	self.target_group = group

#func _physics_process(delta):
	#var target
	#if target == null:
		#target = get_nearest_enemy()
	#if target != null:
		#var direction = (target.global_position + Vector2(0, 100) - global_position).normalized()
		#position += direction * speed * delta
		#rotation = direction.angle() + deg_to_rad(90)  # Adjust if 0 rotation faces up
	#else:
		## Stop processing if no target is found
		#set_physics_process(false)
		#queue_free()  # Optionally remove the knife if it has no target

func get_nearest_enemy():
	var nearest_enemy = null
	var shortest_distance = INF

	# Get a list of all enemies in the target group
	var enemies = null
	var tempEnemies = get_tree().get_nodes_in_group(target_group) 
	for tempEnemie in tempEnemies:
		if tempEnemie.get("isDead") == false:
			enemies = tempEnemies
		
	if enemies != null:
		$AudioStreamPlayer.set("volume_db",get_node("/root/Data_Manager").get("volume_db"))
		$AudioStreamPlayer.play()
		for enemy in enemies:
			if not enemy:
				continue
			var distance = global_position.distance_to(enemy.global_position)
			if distance < shortest_distance:
				shortest_distance = distance
				nearest_enemy = enemy

	return nearest_enemy

# Detect collision with enemies
func _on_area_entered(area):
	if area.get_parent().is_in_group(target_group):
		queue_free()  # Remove the knife upon collision with a valid enemy
		
var direction = null
var target = null
var posTarget
func shoot(): 
	if target == null:
		target = get_nearest_enemy()
	if target != null:
		direction = (target.global_position + Vector2(0, 100) - global_position).normalized()
		if posTarget == null:
			posTarget = target.global_position + Vector2(0, 100)
		rotation = direction.angle() + deg_to_rad(90)  # Adjust if 0 rotation faces up
	else:
		# Stop processing if no target is found
		set_physics_process(false)
		queue_free()  # Optionally remove the knife if it has no target
		
func _physics_process(delta):
	if direction != null:
		position += direction * speed * delta
		
func _on_timer_timeout():
	queue_free()
func is_between(number: float, lower_bound: float, upper_bound: float) -> bool:
	return number >= lower_bound and number <= upper_bound

