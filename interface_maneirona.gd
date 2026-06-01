extends Control

func _on_jogar_pressed() -> void:
	get_tree().change_scene_to_file("res://jogo.tscn")
	pass # Replace with function body.
	
func _on_sair_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
	
