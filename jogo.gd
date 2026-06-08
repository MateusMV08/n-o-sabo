extends Node2D

@export var velocidade: int

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:

	$Fundo.position.x -= velocidade * delta
	$Fundo2.position.x -= velocidade * delta

	if $Fundo.position.x < -1152: 
		$Fundo.position.x = 1152
	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152

	if $FundoProfundo2.position.x < -1152:
		$FundoProfundo2.position.x = 1152
	if $FundoProfundo.position.x < -1152:
		$FundoProfundo.position.x = 1152

	if $FundoMeio.position.x < -1152:
		$FundoMeio.position.x = 1152
	if $FundoMeio2.position.x < -1152:
		$FundoMeio2.position.x = 1152
	
	$FundoProfundo2.position.x   -= velocidade*delta*1
	$FundoProfundo.position.x  -= velocidade*delta*1
	$FundoMeio2.position.x    -= velocidade*delta*0.4
	$FundoMeio.position.x   -= velocidade*delta*0.4
	

	$Chao.position.x -= velocidade * delta
	$Chao2.position.x -= velocidade * delta

	if $Chao.position.x < -1152:
		$Chao.position.x = 1152 

	if $Chao2.position.x < -1152:
		$Chao2.position.x = 1152
		
