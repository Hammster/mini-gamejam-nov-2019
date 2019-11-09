extends Area2D

signal step_done

func _on_Test_area_entered(area):
	$Sprite.frame = 1
	emit_signal("step_done")
	pass # Replace with function body.
