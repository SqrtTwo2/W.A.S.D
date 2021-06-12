extends Node2D

onready var ww = $W
onready var aa = $A
onready var ss = $S
onready var dd = $D
onready var w = $World
onready var a = $Aorld
onready var s = $Sorld
onready var d = $Dorld
onready var bg = $CanvasLayer/TextureRect

func _ready():
	bg.color = Color(0.2,0,0,1)
	w.visible = true
	a.visible = false
	s.visible = false
	d.visible = false

func _physics_process(delta):
	if ((ww.position - aa.position).length_squared() > 0.1) or ((ss.position - dd.position).length_squared() > 0.1) or ((aa.position - dd.position).length_squared() > 0.1):
		print('deda')
	if Input.is_action_just_pressed('W'):
		w.visible = true
		a.visible = false
		s.visible = false
		d.visible = false
		bg.color = Color(0.2,0,0,1)
	if Input.is_action_just_pressed("A"):
		w.visible = false
		a.visible = true
		s.visible = false
		d.visible = false
		bg.color = Color(0,0.15,0.2,1)
	if Input.is_action_just_pressed("S"):
		w.visible = false
		a.visible = false
		s.visible = true
		d.visible = false
		bg.color = Color(0.15,0.2,0,1)
	if Input.is_action_just_pressed("D"):
		w.visible = false
		a.visible = false
		s.visible = false
		d.visible = true
		bg.color = Color(0.15,0,0.2,1)
