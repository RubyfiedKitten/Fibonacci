extends Node2D

@onready var line_edit: LineEdit = $LineEdit
@onready var output_label: Label = $OutputLabel
@onready var texture_button: TextureButton = $TextureButton

func _ready() -> void:
	line_edit.text_submitted.connect(_on_input_given)

func _on_input_given(input: String):
	var number : int = input.to_int()
	if (number > 0 and number <= 5555):
		output_label.text = calc_Fibonacci(number)
	else:
		output_label.text = "That's not a valid number, please try again :D"

func calc_Fibonacci(n): # will take in a vaild number from the input panel, and return a string :D
	var a : int = 0
	var b : int = 1
	var ans = 0
	for i in range(n):
		if n < 2:
			ans = 1
		else: 
			ans = a + b
			a = b
			b = ans
	return str(a)

func _on_texture_button_pressed() -> void:
	output_label.text = "Thank you for petting Mr. Snuggles Worth 🥰"
