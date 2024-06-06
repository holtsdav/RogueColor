extends Node
var isShown = false

#NORMAL
const Normal_BulletSpeed_Text1 = "Increase 
Bullet Speed"
const Normal_BulletSpeed_Text2 = "+10%"
const Normal_BulletSpeed_Sprite = preload("res://Art/7/Bullet2.png")
var Normal_BulletSpeed_isUsed = false

const Normal_BulletCooldown_Text1 = "Decrease 
Bullet Cooldown"
const Normal_BulletCooldown_Text2 = "-5%"
const Normal_BulletCooldown_Sprite = preload("res://Art/7/0_Timer.png")
var Normal_BulletCooldown_isUsed = false

const Normal_BulletLifetime_Text1 = "Increase 
Bullet Lifetime"
const Normal_BulletLifetime_Text2 = "+5%"
const Normal_BulletLifetime_Sprite = preload("res://Art/7/Gun.png")
var Normal_BulletLifetime_isUsed = false

const Normal_maxHealth_Text1 = "Increase 
Max Health"
const Normal_maxHealth_Text2 = "+2"
const Normal_maxHealth_Sprite = preload("res://Art/7/maxHealth.png")
var Normal_maxHealth_isUsed = false

const Normal_Heal_Text1 = "Heal by"
const Normal_Heal_Text2 = "10%"
const Normal_Heal_Sprite = preload("res://Art/7/Heart.png")
var Normal_Heal_isUsed = false

const Normal_BulletDamage_Text1 = "Increase
Damage by"
const Normal_BulletDamage_Text2 = "+2%"
const Normal_BulletDamage_Sprite = preload("res://Art/7/Death.png")
var Normal_BulletDamage_isUsed = false

#EPIC
const Epic_BulletSpeed_Text1 = "Increase 
Bullet Speed"
const Epic_BulletSpeed_Text2 = "+20%"
const Epic_BulletSpeed_Sprite = preload("res://Art/7/Bullet2.png")
var Epic_BulletSpeed_isUsed = false

const Epic_BulletCooldown_Text1 = "Decrease 
Bullet Cooldown"
const Epic_BulletCooldown_Text2 = "-20%"
const Epic_BulletCooldown_Sprite = preload("res://Art/7/0_Timer.png")
var Epic_BulletCooldown_isUsed = false

const Epic_BulletLifetime_Text1 = "Increase 
Bullet Lifetime"
const Epic_BulletLifetime_Text2 = "+20%"
const Epic_BulletLifetime_Sprite = preload("res://Art/7/Gun.png")
var Epic_BulletLifetime_isUsed = false

const Epic_maxHealth_Text1 = "Increase 
Max Health"
const Epic_maxHealth_Text2 = "+5"
const Epic_maxHealth_Sprite = preload("res://Art/7/maxHealth.png")
var Epic_maxHealth_isUsed = false

const Epic_Heal_Text1 = "Heal by"
const Epic_Heal_Text2 = "35%"
const Epic_Heal_Sprite = preload("res://Art/7/Heart.png")
var Epic_Heal_isUsed = false

const Epic_BulletDamage_Text1 = "Increase
Damage by"
const Epic_BulletDamage_Text2 = "+5%"
const Epic_BulletDamage_Sprite = preload("res://Art/7/Death.png")
var Epic_BulletDamage_isUsed = false

#Legendary
const Legendary_Bullets_Text1 = "Increase 
Bullets by"
const Legendary_Bullets_Text2 = "+1"
const Legendary_Bullets_Sprite = preload("res://Art/7/Bullet.png")
var Legendary_Bullets_isUsed = false

const Legendary_BulletDamage_Text1 = "Increase 
Bullet Damage"
var Legendary_BulletDamage_Text2 = "+1"
const Legendary_BulletDamage_Sprite = preload("res://Art/7/Death.png")
var Legendary_BulletDamage_isUsed = false
var Legendary_BulletDamage_onetime = false

const Legendary_BulletSize_Text1 = "Increase 
Bullet Size"
const Legendary_BulletSize_Text2 = "+20%"
const Legendary_BulletSize_Sprite = preload("res://Art/7/Size.png")
var Legendary_BulletSize_isUsed = false

const Legendary_maxHealth_Text1 = "Double 
Max Health"
const Legendary_maxHealth_Text2 = "2x"
const Legendary_maxHealth_Sprite = preload("res://Art/7/maxHealth.png")
var Legendary_maxHealth_isUsed = false

const Legendary_LifeRegen_Text1 = "Add Health
Regeneration"
var Legendary_LifeRegen_Text2 = "+0.5/s"
const Legendary_LifeRegen_Sprite = preload("res://Art/7/Health_Regen.png")
var Legendary_LifeRegen_isUsed = false
var Legendary_HealthRegen_onetime = 0 



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	
	if get_parent().get("visible") == true and isShown == false:
		Normal_BulletDamage_isUsed = false
		Epic_BulletDamage_isUsed = false
		Normal_BulletSpeed_isUsed = false
		Normal_BulletCooldown_isUsed = false
		Normal_BulletLifetime_isUsed = false
		Normal_maxHealth_isUsed = false
		Normal_Heal_isUsed = false
		Epic_BulletSpeed_isUsed = false
		Epic_BulletCooldown_isUsed = false
		Epic_BulletLifetime_isUsed = false
		Epic_maxHealth_isUsed = false
		Epic_Heal_isUsed = false
		Legendary_BulletSize_isUsed = false
		Legendary_maxHealth_isUsed = false
		Legendary_LifeRegen_isUsed = false
		Legendary_BulletDamage_isUsed = false
		isShown = true
		var assigned1 = false
		var Prob1 = randf()
		if Prob1 <= 0.625: #Normal
			$"../Button1".material.set("shader_parameter/OnoffPurple",false)
			$"../Button1".material.set("shader_parameter/OnoffYellow",false)
			var Prob2 = randf()
			while not assigned1:
				if Prob2 <= 0.167:
					if Normal_BulletSpeed_isUsed == false:
						$"../Button1/Text1".set("text", Normal_BulletSpeed_Text1)
						$"../Button1/Text2".set("text", Normal_BulletSpeed_Text2)
						$"../Button1/Sprite2D".set("texture", Normal_BulletSpeed_Sprite)
						Normal_BulletSpeed_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.167 and Prob2 <= 0.334:
					if Normal_BulletCooldown_isUsed == false:
						$"../Button1/Text1".set("text", Normal_BulletCooldown_Text1)
						$"../Button1/Text2".set("text", Normal_BulletCooldown_Text2)
						$"../Button1/Sprite2D".set("texture", Normal_BulletCooldown_Sprite)
						Normal_BulletCooldown_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.334 and Prob2 <= 0.501:
					if Normal_BulletLifetime_isUsed == false:
						$"../Button1/Text1".set("text", Normal_BulletLifetime_Text1)
						$"../Button1/Text2".set("text", Normal_BulletLifetime_Text2)
						$"../Button1/Sprite2D".set("texture", Normal_BulletLifetime_Sprite)
						Normal_BulletLifetime_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.501 and Prob2 <= 0.668:
					if Normal_maxHealth_isUsed == false:
						$"../Button1/Text1".set("text", Normal_maxHealth_Text1)
						$"../Button1/Text2".set("text", Normal_maxHealth_Text2)
						$"../Button1/Sprite2D".set("texture", Normal_maxHealth_Sprite)
						Normal_maxHealth_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.668 and Prob2 <= 0.835:
					if Normal_Heal_isUsed == false:
						$"../Button1/Text1".set("text", Normal_Heal_Text1)
						$"../Button1/Text2".set("text", Normal_Heal_Text2)
						$"../Button1/Sprite2D".set("texture", Normal_Heal_Sprite)
						Normal_Heal_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.835 and Prob2 <= 1:
					if Normal_Heal_isUsed == false:
						$"../Button1/Text1".set("text", Normal_BulletDamage_Text1)
						$"../Button1/Text2".set("text", Normal_BulletDamage_Text2)
						$"../Button1/Sprite2D".set("texture", Normal_BulletDamage_Sprite)
						Normal_Heal_isUsed = true
						assigned1 = true
				print("Button1/Normal/Prob2",Prob2)
		if Prob1 > 0.625 and Prob1 <= 0.925: #Epic
			$"../Button1".material.set("shader_parameter/OnoffPurple",true)
			$"../Button1".material.set("shader_parameter/OnoffYellow",false)
			var Prob2 = randf()
			while not assigned1:
				if Prob2 <= 0.167:
					if Epic_BulletSpeed_isUsed == false:
						$"../Button1/Text1".set("text", Epic_BulletSpeed_Text1)
						$"../Button1/Text2".set("text", Epic_BulletSpeed_Text2)
						$"../Button1/Sprite2D".set("texture", Epic_BulletSpeed_Sprite)
						Epic_BulletSpeed_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.167 and Prob2 <= 0.334:
					if Epic_BulletCooldown_isUsed == false:
						$"../Button1/Text1".set("text", Epic_BulletCooldown_Text1)
						$"../Button1/Text2".set("text", Epic_BulletCooldown_Text2)
						$"../Button1/Sprite2D".set("texture", Epic_BulletCooldown_Sprite)
						Epic_BulletCooldown_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.334 and Prob2 <= 0.501:
					if Epic_BulletLifetime_isUsed == false:
						$"../Button1/Text1".set("text", Epic_BulletLifetime_Text1)
						$"../Button1/Text2".set("text", Epic_BulletLifetime_Text2)
						$"../Button1/Sprite2D".set("texture", Epic_BulletLifetime_Sprite)
						Epic_BulletLifetime_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.501 and Prob2 <= 0.668:
					if Epic_maxHealth_isUsed == false:
						$"../Button1/Text1".set("text", Epic_maxHealth_Text1)
						$"../Button1/Text2".set("text", Epic_maxHealth_Text2)
						$"../Button1/Sprite2D".set("texture", Epic_maxHealth_Sprite)
						Epic_maxHealth_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.668 and Prob2 <= 0.835:
					if Epic_Heal_isUsed == false:
						$"../Button1/Text1".set("text", Epic_Heal_Text1)
						$"../Button1/Text2".set("text", Epic_Heal_Text2)
						$"../Button1/Sprite2D".set("texture", Epic_Heal_Sprite)
						Epic_Heal_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.835 and Prob2 <= 1.0:
					if Epic_Heal_isUsed == false:
						$"../Button1/Text1".set("text", Epic_BulletDamage_Text1)
						$"../Button1/Text2".set("text", Epic_BulletDamage_Text2)
						$"../Button1/Sprite2D".set("texture", Epic_BulletDamage_Sprite)
						Epic_Heal_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				print("Button1/Epic/Prob2",Prob2)
		if Prob1 > 0.925 and Prob1 <= 1.0: #Legendary
			$"../Button1".material.set("shader_parameter/OnoffPurple",false)
			$"../Button1".material.set("shader_parameter/OnoffYellow",true)
			var Prob2 = randf()
			while not assigned1:
				if Prob2 <= 0.2:
					if Legendary_Bullets_isUsed == false:
						$"../Button1/Text1".set("text", Legendary_Bullets_Text1)
						$"../Button1/Text2".set("text", Legendary_Bullets_Text2)
						$"../Button1/Sprite2D".set("texture", Legendary_Bullets_Sprite)
						Legendary_Bullets_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.2 and Prob2 <= 0.4:
					if Legendary_BulletDamage_isUsed == false:
						$"../Button1/Text1".set("text", Legendary_BulletDamage_Text1)
						$"../Button1/Text2".set("text", Legendary_BulletDamage_Text2)
						$"../Button1/Sprite2D".set("texture", Legendary_BulletDamage_Sprite)
						Legendary_BulletDamage_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.4 and Prob2 <= 0.6:
					if Legendary_BulletSize_isUsed == false:
						$"../Button1/Text1".set("text", Legendary_BulletSize_Text1)
						$"../Button1/Text2".set("text", Legendary_BulletSize_Text2)
						$"../Button1/Sprite2D".set("texture", Legendary_BulletSize_Sprite)
						Legendary_BulletSize_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.6 and Prob2 <= 0.65:
					if Legendary_maxHealth_isUsed == false:
						$"../Button1/Text1".set("text", Legendary_maxHealth_Text1)
						$"../Button1/Text2".set("text", Legendary_maxHealth_Text2)
						$"../Button1/Sprite2D".set("texture", Legendary_maxHealth_Sprite)
						Legendary_maxHealth_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.8 and Prob2 <= 1.0:
					if Legendary_LifeRegen_isUsed == false:
						$"../Button1/Text1".set("text", Legendary_LifeRegen_Text1)
						$"../Button1/Text2".set("text", Legendary_LifeRegen_Text2)
						$"../Button1/Sprite2D".set("texture", Legendary_LifeRegen_Sprite)
						Legendary_LifeRegen_isUsed = true
						assigned1 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.65 and Prob2 <= 0.8:
					Prob2 = randf()
				print("Button1/Legendary/Prob2",Prob2)
						
						
		Normal_BulletDamage_isUsed = false
		Epic_BulletDamage_isUsed = false
		Normal_BulletSpeed_isUsed = false
		Normal_BulletCooldown_isUsed = false
		Normal_BulletLifetime_isUsed = false
		Normal_maxHealth_isUsed = false
		Normal_Heal_isUsed = false
		Epic_BulletSpeed_isUsed = false
		Epic_BulletCooldown_isUsed = false
		Epic_BulletLifetime_isUsed = false
		Epic_maxHealth_isUsed = false
		Epic_Heal_isUsed = false
		Legendary_BulletSize_isUsed = false
		Legendary_maxHealth_isUsed = false
		Legendary_LifeRegen_isUsed = false
		Legendary_BulletDamage_isUsed = false
		var assigned2 = false
		Prob1 = randf()
		if Prob1 <= 0.625: #Normal
			$"../Button2".material.set("shader_parameter/OnoffPurple",false)
			$"../Button2".material.set("shader_parameter/OnoffYellow",false)
			var Prob2 = randf()
			while not assigned2:
				if Prob2 <= 0.167:
					if Normal_BulletSpeed_isUsed == false:
						$"../Button2/Text1".set("text", Normal_BulletSpeed_Text1)
						$"../Button2/Text2".set("text", Normal_BulletSpeed_Text2)
						$"../Button2/Sprite2D".set("texture", Normal_BulletSpeed_Sprite)
						Normal_BulletSpeed_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.167 and Prob2 <= 0.334:
					if Normal_BulletCooldown_isUsed == false:
						$"../Button2/Text1".set("text", Normal_BulletCooldown_Text1)
						$"../Button2/Text2".set("text", Normal_BulletCooldown_Text2)
						$"../Button2/Sprite2D".set("texture", Normal_BulletCooldown_Sprite)
						Normal_BulletCooldown_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.334 and Prob2 <= 0.501:
					if Normal_BulletLifetime_isUsed == false:
						$"../Button2/Text1".set("text", Normal_BulletLifetime_Text1)
						$"../Button2/Text2".set("text", Normal_BulletLifetime_Text2)
						$"../Button2/Sprite2D".set("texture", Normal_BulletLifetime_Sprite)
						Normal_BulletLifetime_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.501 and Prob2 <= 0.668:
					if Normal_maxHealth_isUsed == false:
						$"../Button2/Text1".set("text", Normal_maxHealth_Text1)
						$"../Button2/Text2".set("text", Normal_maxHealth_Text2)
						$"../Button2/Sprite2D".set("texture", Normal_maxHealth_Sprite)
						Normal_maxHealth_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.668 and Prob2 <= 0.835:
					if Normal_Heal_isUsed == false:
						$"../Button2/Text1".set("text", Normal_Heal_Text1)
						$"../Button2/Text2".set("text", Normal_Heal_Text2)
						$"../Button2/Sprite2D".set("texture", Normal_Heal_Sprite)
						Normal_Heal_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.835 and Prob2 <= 1:
					if Normal_Heal_isUsed == false:
						$"../Button2/Text1".set("text", Normal_BulletDamage_Text1)
						$"../Button2/Text2".set("text", Normal_BulletDamage_Text2)
						$"../Button2/Sprite2D".set("texture", Normal_BulletDamage_Sprite)
						Normal_Heal_isUsed = true
						assigned2 = true
				print("Button2/Normal/Prob2",Prob2)
		if Prob1 > 0.625 and Prob1 <= 0.925: #Epic
			$"../Button2".material.set("shader_parameter/OnoffPurple",true)
			$"../Button2".material.set("shader_parameter/OnoffYellow",false)
			var Prob2 = randf()
			while not assigned2:
				if Prob2 <= 0.167:
					if Epic_BulletSpeed_isUsed == false:
						$"../Button2/Text1".set("text", Epic_BulletSpeed_Text1)
						$"../Button2/Text2".set("text", Epic_BulletSpeed_Text2)
						$"../Button2/Sprite2D".set("texture", Epic_BulletSpeed_Sprite)
						Epic_BulletSpeed_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.167 and Prob2 <= 0.334:
					if Epic_BulletCooldown_isUsed == false:
						$"../Button2/Text1".set("text", Epic_BulletCooldown_Text1)
						$"../Button2/Text2".set("text", Epic_BulletCooldown_Text2)
						$"../Button2/Sprite2D".set("texture", Epic_BulletCooldown_Sprite)
						Epic_BulletCooldown_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.334 and Prob2 <= 0.501:
					if Epic_BulletLifetime_isUsed == false:
						$"../Button2/Text1".set("text", Epic_BulletLifetime_Text1)
						$"../Button2/Text2".set("text", Epic_BulletLifetime_Text2)
						$"../Button2/Sprite2D".set("texture", Epic_BulletLifetime_Sprite)
						Epic_BulletLifetime_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.501 and Prob2 <= 0.668:
					if Epic_maxHealth_isUsed == false:
						$"../Button2/Text1".set("text", Epic_maxHealth_Text1)
						$"../Button2/Text2".set("text", Epic_maxHealth_Text2)
						$"../Button2/Sprite2D".set("texture", Epic_maxHealth_Sprite)
						Epic_maxHealth_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.668 and Prob2 <= 0.835:
					if Epic_Heal_isUsed == false:
						$"../Button2/Text1".set("text", Epic_Heal_Text1)
						$"../Button2/Text2".set("text", Epic_Heal_Text2)
						$"../Button2/Sprite2D".set("texture", Epic_Heal_Sprite)
						Epic_Heal_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.835 and Prob2 <= 1.0:
					if Epic_Heal_isUsed == false:
						$"../Button2/Text1".set("text", Epic_BulletDamage_Text1)
						$"../Button2/Text2".set("text", Epic_BulletDamage_Text2)
						$"../Button2/Sprite2D".set("texture", Epic_BulletDamage_Sprite)
						Epic_Heal_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				print("Button2/Epic/Prob2",Prob2)
		if Prob1 > 0.925 and Prob1 <= 1.0: #Legendary
			$"../Button2".material.set("shader_parameter/OnoffPurple",false)
			$"../Button2".material.set("shader_parameter/OnoffYellow",true)
			var Prob2 = randf()
			while not assigned2:
				if Prob2 <= 0.2:
					if Legendary_Bullets_isUsed == false:
						$"../Button2/Text1".set("text", Legendary_Bullets_Text1)
						$"../Button2/Text2".set("text", Legendary_Bullets_Text2)
						$"../Button2/Sprite2D".set("texture", Legendary_Bullets_Sprite)
						Legendary_Bullets_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.2 and Prob2 <= 0.4:
					if Legendary_BulletDamage_isUsed == false:
						$"../Button2/Text1".set("text", Legendary_BulletDamage_Text1)
						$"../Button2/Text2".set("text", Legendary_BulletDamage_Text2)
						$"../Button2/Sprite2D".set("texture", Legendary_BulletDamage_Sprite)
						Legendary_BulletDamage_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.4 and Prob2 <= 0.6:
					if Legendary_BulletSize_isUsed == false:
						$"../Button2/Text1".set("text", Legendary_BulletSize_Text1)
						$"../Button2/Text2".set("text", Legendary_BulletSize_Text2)
						$"../Button2/Sprite2D".set("texture", Legendary_BulletSize_Sprite)
						Legendary_BulletSize_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.6 and Prob2 <= 0.65:
					if Legendary_maxHealth_isUsed == false:
						$"../Button2/Text1".set("text", Legendary_maxHealth_Text1)
						$"../Button2/Text2".set("text", Legendary_maxHealth_Text2)
						$"../Button2/Sprite2D".set("texture", Legendary_maxHealth_Sprite)
						Legendary_maxHealth_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.8 and Prob2 <= 1.0:
					if Legendary_LifeRegen_isUsed == false:
						$"../Button2/Text1".set("text", Legendary_LifeRegen_Text1)
						$"../Button2/Text2".set("text", Legendary_LifeRegen_Text2)
						$"../Button2/Sprite2D".set("texture", Legendary_LifeRegen_Sprite)
						Legendary_LifeRegen_isUsed = true
						assigned2 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.65 and Prob2 <= 0.8:
					Prob2 = randf()
				print("Button2/Legendary/Prob2",Prob2)



		Normal_BulletDamage_isUsed = false
		Epic_BulletDamage_isUsed = false
		Normal_BulletSpeed_isUsed = false
		Normal_BulletCooldown_isUsed = false
		Normal_BulletLifetime_isUsed = false
		Normal_maxHealth_isUsed = false
		Normal_Heal_isUsed = false
		Epic_BulletSpeed_isUsed = false
		Epic_BulletCooldown_isUsed = false
		Epic_BulletLifetime_isUsed = false
		Epic_maxHealth_isUsed = false
		Epic_Heal_isUsed = false
		Legendary_BulletSize_isUsed = false
		Legendary_maxHealth_isUsed = false
		Legendary_LifeRegen_isUsed = false
		Legendary_BulletDamage_isUsed = false
		var assigned3 = false
		Prob1 = randf()
		if Prob1 <= 0.625: #Normal
			$"../Button3".material.set("shader_parameter/OnoffPurple",false)
			$"../Button3".material.set("shader_parameter/OnoffYellow",false)
			var Prob2 = randf()
			while not assigned3:
				if Prob2 <= 0.167:
					if Normal_BulletSpeed_isUsed == false:
						$"../Button3/Text1".set("text", Normal_BulletSpeed_Text1)
						$"../Button3/Text2".set("text", Normal_BulletSpeed_Text2)
						$"../Button3/Sprite2D".set("texture", Normal_BulletSpeed_Sprite)
						Normal_BulletSpeed_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.167 and Prob2 <= 0.334:
					if Normal_BulletCooldown_isUsed == false:
						$"../Button3/Text1".set("text", Normal_BulletCooldown_Text1)
						$"../Button3/Text2".set("text", Normal_BulletCooldown_Text2)
						$"../Button3/Sprite2D".set("texture", Normal_BulletCooldown_Sprite)
						Normal_BulletCooldown_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.334 and Prob2 <= 0.501:
					if Normal_BulletLifetime_isUsed == false:
						$"../Button3/Text1".set("text", Normal_BulletLifetime_Text1)
						$"../Button3/Text2".set("text", Normal_BulletLifetime_Text2)
						$"../Button3/Sprite2D".set("texture", Normal_BulletLifetime_Sprite)
						Normal_BulletLifetime_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.501 and Prob2 <= 0.668:
					if Normal_maxHealth_isUsed == false:
						$"../Button3/Text1".set("text", Normal_maxHealth_Text1)
						$"../Button3/Text2".set("text", Normal_maxHealth_Text2)
						$"../Button3/Sprite2D".set("texture", Normal_maxHealth_Sprite)
						Normal_maxHealth_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.668 and Prob2 <= 0.835:
					if Normal_Heal_isUsed == false:
						$"../Button3/Text1".set("text", Normal_Heal_Text1)
						$"../Button3/Text2".set("text", Normal_Heal_Text2)
						$"../Button3/Sprite2D".set("texture", Normal_Heal_Sprite)
						Normal_Heal_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.835 and Prob2 <= 1:
					if Normal_BulletDamage_isUsed == false:
						$"../Button3/Text1".set("text", Normal_BulletDamage_Text1)
						$"../Button3/Text2".set("text", Normal_BulletDamage_Text2)
						$"../Button3/Sprite2D".set("texture", Normal_BulletDamage_Sprite)
						Normal_BulletDamage_isUsed = true
						assigned3 = true
				print("Button3/Normal/Prob2",Prob2)
		if Prob1 > 0.625 and Prob1 <= 0.925: #Epic
			$"../Button3".material.set("shader_parameter/OnoffPurple",true)
			$"../Button3".material.set("shader_parameter/OnoffYellow",false)
			var Prob2 = randf()
			while not assigned3:
				if Prob2 <= 0.167:
					if Epic_BulletSpeed_isUsed == false:
						$"../Button3/Text1".set("text", Epic_BulletSpeed_Text1)
						$"../Button3/Text2".set("text", Epic_BulletSpeed_Text2)
						$"../Button3/Sprite2D".set("texture", Epic_BulletSpeed_Sprite)
						Epic_BulletSpeed_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.167 and Prob2 <= 0.334:
					if Epic_BulletCooldown_isUsed == false:
						$"../Button3/Text1".set("text", Epic_BulletCooldown_Text1)
						$"../Button3/Text2".set("text", Epic_BulletCooldown_Text2)
						$"../Button3/Sprite2D".set("texture", Epic_BulletCooldown_Sprite)
						Epic_BulletCooldown_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.334 and Prob2 <= 0.501:
					if Epic_BulletLifetime_isUsed == false:
						$"../Button3/Text1".set("text", Epic_BulletLifetime_Text1)
						$"../Button3/Text2".set("text", Epic_BulletLifetime_Text2)
						$"../Button3/Sprite2D".set("texture", Epic_BulletLifetime_Sprite)
						Epic_BulletLifetime_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.501 and Prob2 <= 0.668:
					if Epic_maxHealth_isUsed == false:
						$"../Button3/Text1".set("text", Epic_maxHealth_Text1)
						$"../Button3/Text2".set("text", Epic_maxHealth_Text2)
						$"../Button3/Sprite2D".set("texture", Epic_maxHealth_Sprite)
						Epic_maxHealth_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.668 and Prob2 <= 0.835:
					if Epic_Heal_isUsed == false:
						$"../Button3/Text1".set("text", Epic_Heal_Text1)
						$"../Button3/Text2".set("text", Epic_Heal_Text2)
						$"../Button3/Sprite2D".set("texture", Epic_Heal_Sprite)
						Epic_Heal_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.835 and Prob2 <= 1.0:
					if Epic_BulletDamage_isUsed == false:
						$"../Button3/Text1".set("text", Epic_BulletDamage_Text1)
						$"../Button3/Text2".set("text", Epic_BulletDamage_Text2)
						$"../Button3/Sprite2D".set("texture", Epic_BulletDamage_Sprite)
						Epic_BulletDamage_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				print("Button3/Epic/Prob2",Prob2)
		if Prob1 > 0.925 and Prob1 <= 1.0: #Legendary
			$"../Button3".material.set("shader_parameter/OnoffPurple",false)
			$"../Button3".material.set("shader_parameter/OnoffYellow",true)
			var Prob2 = randf()
			while not assigned3:
				if Prob2 <= 0.2:
					if Legendary_Bullets_isUsed == false:
						$"../Button3/Text1".set("text", Legendary_Bullets_Text1)
						$"../Button3/Text2".set("text", Legendary_Bullets_Text2)
						$"../Button3/Sprite2D".set("texture", Legendary_Bullets_Sprite)
						Legendary_Bullets_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.2 and Prob2 <= 0.4:
					if Legendary_BulletDamage_isUsed == false:
						$"../Button3/Text1".set("text", Legendary_BulletDamage_Text1)
						$"../Button3/Text2".set("text", Legendary_BulletDamage_Text2)
						$"../Button3/Sprite2D".set("texture", Legendary_BulletDamage_Sprite)
						Legendary_BulletDamage_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.4 and Prob2 <= 0.6:
					if Legendary_BulletSize_isUsed == false:
						$"../Button3/Text1".set("text", Legendary_BulletSize_Text1)
						$"../Button3/Text2".set("text", Legendary_BulletSize_Text2)
						$"../Button3/Sprite2D".set("texture", Legendary_BulletSize_Sprite)
						Legendary_BulletSize_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.6 and Prob2 <= 0.65:
					if Legendary_maxHealth_isUsed == false:
						$"../Button3/Text1".set("text", Legendary_maxHealth_Text1)
						$"../Button3/Text2".set("text", Legendary_maxHealth_Text2)
						$"../Button3/Sprite2D".set("texture", Legendary_maxHealth_Sprite)
						Legendary_maxHealth_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.8 and Prob2 <= 1.0:
					if Legendary_LifeRegen_isUsed == false:
						$"../Button3/Text1".set("text", Legendary_LifeRegen_Text1)
						$"../Button3/Text2".set("text", Legendary_LifeRegen_Text2)
						$"../Button3/Sprite2D".set("texture", Legendary_LifeRegen_Sprite)
						Legendary_LifeRegen_isUsed = true
						assigned3 = true
					else:
						Prob2 = randf()
				if Prob2 > 0.65 and Prob2 <= 0.8:
					Prob2 = randf()
				print("Button3/Legendary/Prob2",Prob2)
	if get_parent().get("visible") == false:
		isShown = false




func _on_button_1_mouse_entered():
	$"../Button1".material.set("shader_parameter/Mouse",true)


func _on_button_1_mouse_exited():
	$"../Button1".material.set("shader_parameter/Mouse",false)


func _on_button_2_mouse_entered():
	$"../Button2".material.set("shader_parameter/Mouse",true)


func _on_button_2_mouse_exited():
	$"../Button2".material.set("shader_parameter/Mouse",false)


func _on_button_3_mouse_entered():
	$"../Button3".material.set("shader_parameter/Mouse",true)


func _on_button_3_mouse_exited():
	$"../Button3".material.set("shader_parameter/Mouse",false)


var Player
var AbilityManager
var World
func _ready():
	Player = get_node("/root/World/Player")
	AbilityManager = get_node("/root/World/Ability_Manager")
	World = get_node("/root/World")
func _on_button_1_pressed():
	if $"../Button1/Text1".get("text") == Normal_BulletDamage_Text1 && $"../Button1/Text2".get("text") == Normal_BulletDamage_Text2:
		World.set("damage", World.get("damage") * 1.02)
		
	if $"../Button1/Text1".get("text") == Normal_BulletSpeed_Text1 && $"../Button1/Text2".get("text") == Normal_BulletSpeed_Text2:
		AbilityManager.set("Speed", AbilityManager.get("Speed") * 1.10)
		
		
	if $"../Button1/Text1".get("text") == Normal_BulletCooldown_Text1 && $"../Button1/Text2".get("text") == Normal_BulletCooldown_Text2:
		AbilityManager.set("Knife_cooldown", AbilityManager.get("Knife_cooldown") - AbilityManager.get("Knife_cooldown")*0.05)
		
		
	if $"../Button1/Text1".get("text") == Normal_BulletLifetime_Text1 && $"../Button1/Text2".get("text") == Normal_BulletLifetime_Text2:
		AbilityManager.set("Knife_Lifetime", AbilityManager.get("Knife_Lifetime") * 1.05)
		
		
	if $"../Button1/Text1".get("text") == Normal_maxHealth_Text1 && $"../Button1/Text2".get("text") == Normal_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")+2)
		Player.set("Health", Player.get("Health")+2)
		
	
	if $"../Button1/Text1".get("text") == Normal_Heal_Text1 && $"../Button1/Text2".get("text") == Normal_Heal_Text2:
		Player.set("Health", Player.get("Health") + 0.1 * Player.get("maxHealth"))
		
	
	if $"../Button1/Text1".get("text") == Epic_BulletDamage_Text1 && $"../Button1/Text2".get("text") == Epic_BulletDamage_Text2:
		World.set("damage", World.get("damage") * 1.05)
		
	if $"../Button1/Text1".get("text") == Epic_BulletSpeed_Text1 && $"../Button1/Text2".get("text") == Epic_BulletSpeed_Text2:
		AbilityManager.set("Speed", AbilityManager.get("Speed") * 1.20)
		
		
	if $"../Button1/Text1".get("text") == Epic_BulletCooldown_Text1 && $"../Button1/Text2".get("text") == Epic_BulletCooldown_Text2:
		AbilityManager.set("Knife_cooldown", AbilityManager.get("Knife_cooldown") - AbilityManager.get("Knife_cooldown")*0.20)
		
		
	if $"../Button1/Text1".get("text") == Epic_BulletLifetime_Text1 && $"../Button1/Text2".get("text") == Epic_BulletLifetime_Text2:
		AbilityManager.set("Knife_Lifetime", AbilityManager.get("Knife_Lifetime") * 1.20)
		
	if $"../Button1/Text1".get("text") == Epic_maxHealth_Text1 && $"../Button1/Text2".get("text") == Epic_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")+5)
		Player.set("Health", Player.get("Health")+5)
		
	if $"../Button1/Text1".get("text") == Epic_Heal_Text1 && $"../Button1/Text2".get("text") == Epic_Heal_Text2:
		Player.set("Health", Player.get("Health") + 0.35 * Player.get("maxHealth"))
		
	if $"../Button1/Text1".get("text") == Legendary_Bullets_Text1 && $"../Button1/Text2".get("text") == Legendary_Bullets_Text2:
		AbilityManager.set("twoBullets", true)
		Legendary_Bullets_isUsed = true
		
	if $"../Button1/Text1".get("text") == Legendary_BulletDamage_Text1 && $"../Button1/Text2".get("text") == Legendary_BulletDamage_Text2:
		if Legendary_BulletDamage_onetime == true:
			World.set("damage", World.get("damage") * 1.2)
		elif  Legendary_BulletDamage_onetime == false:
			Legendary_BulletDamage_onetime = true
			Legendary_BulletDamage_Text2 = "+20%"
			World.set("damage", World.get("damage") + 1)
		
	if $"../Button1/Text1".get("text") == Legendary_BulletSize_Text1 && $"../Button1/Text2".get("text") == Legendary_BulletSize_Text2:
		AbilityManager.set("Knife_Size",AbilityManager.get("Knife_Size")+0.2)
		
	if $"../Button1/Text1".get("text") == Legendary_maxHealth_Text1 && $"../Button1/Text2".get("text") == Legendary_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")*2)
		Player.set("Health", Player.get("Health")*2)
		
	if $"../Button1/Text1".get("text") == Legendary_LifeRegen_Text1 && $"../Button1/Text2".get("text") == Legendary_LifeRegen_Text2:
		if Legendary_HealthRegen_onetime >= 2:
			Player.set("healthRegen",Player.get("healthRegen") * 1.5)
			Legendary_LifeRegen_Text2 = "+50%"
		elif Legendary_HealthRegen_onetime < 2:
			Legendary_HealthRegen_onetime += 1
			Player.set("healthRegen",Player.get("healthRegen") + 0.5)


func _on_button_2_pressed():
	
	if $"../Button2/Text1".get("text") == Normal_BulletDamage_Text1 && $"../Button2/Text2".get("text") == Normal_BulletDamage_Text2:
		World.set("damage", World.get("damage") * 1.02)
	
	if $"../Button2/Text1".get("text") == Normal_BulletSpeed_Text1 && $"../Button2/Text2".get("text") == Normal_BulletSpeed_Text2:
		AbilityManager.set("Speed", AbilityManager.get("Speed") * 1.10)
		
		
	if $"../Button2/Text1".get("text") == Normal_BulletCooldown_Text1 && $"../Button2/Text2".get("text") == Normal_BulletCooldown_Text2:
		AbilityManager.set("Knife_cooldown", AbilityManager.get("Knife_cooldown") - AbilityManager.get("Knife_cooldown")*0.05)
		
		
	if $"../Button2/Text1".get("text") == Normal_BulletLifetime_Text1 && $"../Button2/Text2".get("text") == Normal_BulletLifetime_Text2:
		AbilityManager.set("Knife_Lifetime", AbilityManager.get("Knife_Lifetime") * 1.05)
		
		
	if $"../Button2/Text1".get("text") == Normal_maxHealth_Text1 && $"../Button2/Text2".get("text") == Normal_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")+2)
		Player.set("Health", Player.get("Health")+2)
		
	
	if $"../Button2/Text1".get("text") == Normal_Heal_Text1 && $"../Button2/Text2".get("text") == Normal_Heal_Text2:
		Player.set("Health", Player.get("Health") + 0.1 * Player.get("maxHealth"))
		
		
	if $"../Button2/Text1".get("text") == Epic_BulletDamage_Text1 && $"../Button2/Text2".get("text") == Epic_BulletDamage_Text2:
		World.set("damage", World.get("damage") * 1.05)
	
	
	if $"../Button2/Text1".get("text") == Epic_BulletSpeed_Text1 && $"../Button2/Text2".get("text") == Epic_BulletSpeed_Text2:
		AbilityManager.set("Speed", AbilityManager.get("Speed") * 1.20)
		
		
	if $"../Button2/Text1".get("text") == Epic_BulletCooldown_Text1 && $"../Button2/Text2".get("text") == Epic_BulletCooldown_Text2:
		AbilityManager.set("Knife_cooldown", AbilityManager.get("Knife_cooldown") - AbilityManager.get("Knife_cooldown")*0.20)
		
		
	if $"../Button2/Text1".get("text") == Epic_BulletLifetime_Text1 && $"../Button2/Text2".get("text") == Epic_BulletLifetime_Text2:
		AbilityManager.set("Knife_Lifetime", AbilityManager.get("Knife_Lifetime") * 1.20)
		
	if $"../Button2/Text1".get("text") == Epic_maxHealth_Text1 && $"../Button2/Text2".get("text") == Epic_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")+5)
		Player.set("Health", Player.get("Health")+5)
		
	if $"../Button2/Text1".get("text") == Epic_Heal_Text1 && $"../Button2/Text2".get("text") == Epic_Heal_Text2:
		Player.set("Health", Player.get("Health") + 0.35 * Player.get("maxHealth"))
		
	if $"../Button2/Text1".get("text") == Legendary_Bullets_Text1 && $"../Button2/Text2".get("text") == Legendary_Bullets_Text2:
		AbilityManager.set("twoBullets", true)
		Legendary_Bullets_isUsed = true
		
	if $"../Button2/Text1".get("text") == Legendary_BulletDamage_Text1 && $"../Button2/Text2".get("text") == Legendary_BulletDamage_Text2:
		if Legendary_BulletDamage_onetime == true:
			World.set("damage", World.get("damage") * 1.2)
		elif  Legendary_BulletDamage_onetime == false:
			Legendary_BulletDamage_onetime = true
			Legendary_BulletDamage_Text2 = "+20%"
			World.set("damage", World.get("damage") + 1)
		
	if $"../Button2/Text1".get("text") == Legendary_BulletSize_Text1 && $"../Button2/Text2".get("text") == Legendary_BulletSize_Text2:
		AbilityManager.set("Knife_Size",AbilityManager.get("Knife_Size")+ 0.2)
		
	if $"../Button2/Text1".get("text") == Legendary_maxHealth_Text1 && $"../Button2/Text2".get("text") == Legendary_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")*2)
		Player.set("Health", Player.get("Health")*2)
		
	if $"../Button2/Text1".get("text") == Legendary_LifeRegen_Text1 && $"../Button2/Text2".get("text") == Legendary_LifeRegen_Text2:
		if Legendary_HealthRegen_onetime >= 2:
			Player.set("healthRegen",Player.get("healthRegen") * 1.5)
			Legendary_LifeRegen_Text2 = "+50%"
		elif Legendary_HealthRegen_onetime < 2:
			Legendary_HealthRegen_onetime += 1
			Player.set("healthRegen",Player.get("healthRegen") + 0.5)



func _on_button_3_pressed():
	
	if $"../Button3/Text1".get("text") == Normal_BulletDamage_Text1 && $"../Button3/Text2".get("text") == Normal_BulletDamage_Text2:
		World.set("damage", World.get("damage") * 1.02)
	
	if $"../Button3/Text1".get("text") == Normal_BulletSpeed_Text1 && $"../Button3/Text2".get("text") == Normal_BulletSpeed_Text2:
		AbilityManager.set("Speed", AbilityManager.get("Speed") * 1.10)
		
		
	if $"../Button3/Text1".get("text") == Normal_BulletCooldown_Text1 && $"../Button3/Text2".get("text") == Normal_BulletCooldown_Text2:
		AbilityManager.set("Knife_cooldown", AbilityManager.get("Knife_cooldown") - AbilityManager.get("Knife_cooldown")*0.05)
		
		
	if $"../Button3/Text1".get("text") == Normal_BulletLifetime_Text1 && $"../Button3/Text2".get("text") == Normal_BulletLifetime_Text2:
		AbilityManager.set("Knife_Lifetime", AbilityManager.get("Knife_Lifetime") * 1.05)
		
		
	if $"../Button3/Text1".get("text") == Normal_maxHealth_Text1 && $"../Button3/Text2".get("text") == Normal_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")+2)
		Player.set("Health", Player.get("Health")+2)
		
	
	if $"../Button3/Text1".get("text") == Normal_Heal_Text1 && $"../Button3/Text2".get("text") == Normal_Heal_Text2:
		Player.set("Health", Player.get("Health") + 0.1 * Player.get("maxHealth"))
		
		
	if $"../Button3/Text1".get("text") == Epic_BulletDamage_Text1 && $"../Button3/Text2".get("text") == Epic_BulletDamage_Text2:
		World.set("damage", World.get("damage") * 1.05)
	
	if $"../Button3/Text1".get("text") == Epic_BulletSpeed_Text1 && $"../Button3/Text2".get("text") == Epic_BulletSpeed_Text2:
		AbilityManager.set("Speed", AbilityManager.get("Speed") * 1.20)
		
		
	if $"../Button3/Text1".get("text") == Epic_BulletCooldown_Text1 && $"../Button3/Text2".get("text") == Epic_BulletCooldown_Text2:
		AbilityManager.set("Knife_cooldown", AbilityManager.get("Knife_cooldown") - AbilityManager.get("Knife_cooldown")*0.20)
		
		
	if $"../Button3/Text1".get("text") == Epic_BulletLifetime_Text1 && $"../Button3/Text2".get("text") == Epic_BulletLifetime_Text2:
		AbilityManager.set("Knife_Lifetime", AbilityManager.get("Knife_Lifetime") * 1.2)
		
	if $"../Button3/Text1".get("text") == Epic_maxHealth_Text1 && $"../Button3/Text2".get("text") == Epic_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")+5)
		Player.set("Health", Player.get("Health")+5)
		
	if $"../Button3/Text1".get("text") == Epic_Heal_Text1 && $"../Button3/Text2".get("text") == Epic_Heal_Text2:
		Player.set("Health", Player.get("Health") + 0.35 * Player.get("maxHealth"))
		
	if $"../Button3/Text1".get("text") == Legendary_Bullets_Text1 && $"../Button3/Text2".get("text") == Legendary_Bullets_Text2:
		AbilityManager.set("twoBullets", true)
		Legendary_Bullets_isUsed = true
		
	if $"../Button3/Text1".get("text") == Legendary_BulletDamage_Text1 && $"../Button3/Text2".get("text") == Legendary_BulletDamage_Text2:
		if Legendary_BulletDamage_onetime == true:
			World.set("damage", World.get("damage") * 1.2)
		elif  Legendary_BulletDamage_onetime == false:
			Legendary_BulletDamage_onetime = true
			Legendary_BulletDamage_Text2 = "+20%"
			World.set("damage", World.get("damage") + 1.0)
		
		
	if $"../Button3/Text1".get("text") == Legendary_BulletSize_Text1 && $"../Button3/Text2".get("text") == Legendary_BulletSize_Text2:
		AbilityManager.set("Knife_Size",AbilityManager.get("Knife_Size") + 0.2)
		
	if $"../Button3/Text1".get("text") == Legendary_maxHealth_Text1 && $"../Button3/Text2".get("text") == Legendary_maxHealth_Text2:
		Player.set("maxHealth", Player.get("maxHealth")*2)
		Player.set("Health", Player.get("Health")*2)
		
		
	if $"../Button3/Text1".get("text") == Legendary_LifeRegen_Text1 && $"../Button3/Text2".get("text") == Legendary_LifeRegen_Text2:
		if Legendary_HealthRegen_onetime >= 3:
			Player.set("healthRegen",Player.get("healthRegen") * 1.5)
			Legendary_LifeRegen_Text2 = "+50%"
		elif Legendary_HealthRegen_onetime < 3:
			Legendary_HealthRegen_onetime += 1
			Player.set("healthRegen",Player.get("healthRegen") + 0.5)
