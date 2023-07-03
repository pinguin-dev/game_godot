extends Node2D

onready var text_box = $text_box


func _ready():
	text_box.label_text = "test test test"
	text_box.text_start()
