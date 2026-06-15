extends Node2D
@export var Espinho = preload("res://obstaculo.tscn")
var posicoes = [ 
	[1,40]
]
func _ready() -> void:
	for posicao in posicoes:
		var Obstaculo = Espinho.instantiate();
		add_child(Obstaculo);
		Obstaculo.position.x = posicao[0]
		Obstaculo.position.y = posicao[1]
