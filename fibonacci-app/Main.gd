extends Node2D

@warning_ignore("shadowed_global_identifier")
const Big = preload("res://Godot 4.1.x/Big.gd")
@onready var line_edit: LineEdit = $LineEdit
@onready var output_label: Label = $OutputLabel
@onready var texture_button: TextureButton = $TextureButton

var a : Big = Big.new(0)
var b : Big = Big.new(1)

func _ready() -> void:
	line_edit.text_submitted.connect(_on_input_given)

func _on_input_given(input: String):
	var number : int = input.to_int()
	if number <= 1000:
		output_label.text = calc_Fibonacci(number, a, b)
	else:
		output_label.text = "Too many loops, crashing lol"

@warning_ignore("shadowed_variable")
func calc_Fibonacci(n, a , b): # will take in a vaild number from the input panel, and return a string :D
	if n < 2:
		return a.toScientific()
	return calc_Fibonacci(n-1, b, a.plus(b))

func _on_texture_button_pressed() -> void:
	output_label.text = "Thank you for petting Mr. Snuggles Worth 🥰"
