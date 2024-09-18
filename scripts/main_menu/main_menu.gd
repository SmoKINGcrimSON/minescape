class_name MainMenu
extends Control

@onready var crear_partida: Button = $MarginContainer/HBoxContainer/VBoxContainer/crear_partida
@onready var salir: Button = $MarginContainer/HBoxContainer/VBoxContainer/salir
@onready var start_level: PackedScene = preload("res://scenes/levels/level_one.tscn") # preload loads specific scene or specific resource, this must be safe in db

func _ready() -> void:
	crear_partida.button_down.connect(on_start_pressed)
	salir.button_down.connect(on_exit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)

func on_exit_pressed() -> void:
	get_tree().quit() ## this doesn't work on IOS