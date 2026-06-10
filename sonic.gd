extends CharacterBody2D

var velocidade_pulo = -600

func _physics_process(delta: float) -> void:
	velocity += get_gravity() * delta 

	if Input.is_action_just_pressed("ui_up"):
		$Sonico.visible = true
		$Sonico.play("Sonico")
	
	if is_on_floor(): 
		$Sonico.play("Sonico")
		if Input.is_action_pressed("ui_select"): 
				velocity.y = velocidade_pulo 
	else: 
		$Sonico.play("pulo_sonic")
	move_and_slide() 
