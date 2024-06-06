extends Label
var Player
var World
var AbilityManager

var Bullets = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	Player = get_node("/root/World/Player")
	World = get_node("/root/World")
	AbilityManager = get_node("/root/World/Ability_Manager")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set("text", "Health: " + str(snapped(Player.get("Health"),0.01)) + "
	Max Health: " +str(Player.get("maxHealth")) +"
	Damage: " + str(snapped(World.get("damage"),0.01)) +"
	Enemy Health: " + str(World.get("health")) +"
	Enemey Damage: " +str(Player.get("DAMAGE_RATE"))+"/sec" +"
	Bullets: " +str(Bullets) +"
	Bullet Cooldown: " +str(snapped(get_node("/root/World/Ability_Manager/Timer_Knife_Attack").get("wait_time"),0.01)) +"s"+"
	Bullet Size: " + str(snapped(AbilityManager.get("Knife_Scale")/4.00,0.01))+"x" +"
	Bullet Speed: " +str(snapped(AbilityManager.get("Speed")/1000,0.01)) +"x" +"
	Bullet Lifetime: " +str(snapped(AbilityManager.get("Knife_Lifetime"),0.01)) +"x" + "
	Life Regeneration: " +str(snapped(Player.get("healthRegen"),0.01)) +"/s"
	
	
	
	
	
	
	)
	
	
	if AbilityManager.get("twoBullets") == false:
		Bullets = 1
	elif AbilityManager.get("twoBullets") == true:
		Bullets = 2
