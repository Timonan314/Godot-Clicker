extends Button
@onready var panel_2: Panel = $Panel2
@onready var label: Label = $Panel2/ScrollContainer/VBoxContainer/Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	label.text = str("Upgrades:
Combo Max = ", Global.max_combo,
"
Combo Multiplier = ", Global.combo_mult,
"
Click Value = ", Global.acv + 1,
"

Automation:
Automatic Clicks Per Second = ", Global.acps,
"

Data:
Current Clicks = ", Global.clicks,
"
Lifetime Clicks = ", Global.lc,
"
Lifetime Manual Clicks = ", Global.lmc,
"
Clicks Spent = ", Global.cs, "


")



func _on_pressed() -> void:
	if Global.stats_visible == true:
		panel_2.visible = false
		Global.stats_visible = false
	elif Global.stats_visible == false:
		panel_2.visible = true
		Global.stats_visible = true
	
