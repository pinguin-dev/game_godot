extends CanvasLayer

var label_text = "test text test text test"


func _ready():
	$Label.visible_characters = 0


func _on_Timer_timeout():
	$Label.visible_characters += 1
	if label_text.length() <= $Label.visible_characters:
		$Timer.stop()


func text_start():
	$Label.text = label_text
	$Timer.start()
