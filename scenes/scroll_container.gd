extends ScrollContainer
@onready var acps_timer: Timer = $"acps timer"

@onready var button_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer/PanelContainer/Label
@onready var button_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer/PanelContainer2/Label
@onready var button_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer/PanelContainer3/Label

@onready var two_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer3/PanelContainer/Label
@onready var two_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer3/PanelContainer2/Label
@onready var two_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer3/PanelContainer3/Label

@onready var three_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer4/PanelContainer/Label
@onready var three_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer4/PanelContainer2/Label
@onready var three_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer4/PanelContainer3/Label

@onready var four_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer5/PanelContainer/Label
@onready var four_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer5/PanelContainer2/Label
@onready var four_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer5/PanelContainer3/Label


@onready var five_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer6/PanelContainer/Label
@onready var five_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer6/PanelContainer2/Label
@onready var five_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer6/PanelContainer3/Label


@onready var six_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer7/PanelContainer/Label
@onready var six_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer7/PanelContainer2/Label
@onready var six_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer7/PanelContainer3/Label


@onready var seven_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer8/PanelContainer/Label
@onready var seven_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer8/PanelContainer2/Label
@onready var seven_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer8/PanelContainer3/Label


@onready var eight_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer9/PanelContainer/Label
@onready var eight_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer9/PanelContainer2/Label
@onready var eight_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer9/PanelContainer3/Label


@onready var nine_1: Label = $HBoxContainer/VBoxContainer/HBoxContainer10/PanelContainer/Label
@onready var nine_2: Label = $HBoxContainer/VBoxContainer/HBoxContainer10/PanelContainer2/Label
@onready var nine_3: Label = $HBoxContainer/VBoxContainer/HBoxContainer10/PanelContainer3/Label




var one_val = 1
var one_prc = 5
var one_amt = 0

var two_val = 2
var two_prc = 10
var two_amt = 0

var three_val = 4
var three_prc = 15
var three_amt = 0

var four_val = 1
var four_prc = 5
var four_amt = 0

var five_val = 1
var five_prc = 10
var five_amt = 0

var six_val = 1
var six_prc = 15
var six_amt = 0

var seven_val = 1
var seven_prc = 5
var seven_amt = 0

var eight_val = 1
var eight_prc = 5
var eight_amt = 0

var nine_prc = 10000000




func _ready() -> void:
	acps_timer.start()

	button_1.text = "Add
Player"
	button_2.text = str("+", one_val, " Clicks
	Per Second")
	button_3.text = str(one_prc, "
	", one_amt, " Owned")

	two_1.text = "New
Animation"
	two_2.text = str("+", two_val, " Clicks
	Per Second")
	two_3.text = str(two_prc, "
	", two_amt, " Owned")

	three_1.text = "New
Character"
	three_2.text = str("+", three_val, " Clicks
	Per Second")
	three_3.text = str(three_prc, "
	", three_amt, " Owned")

	four_1.text = "New
Mesh"
	four_2.text = str("+", four_val, " Click
	Value")
	four_3.text = str(four_prc, "
	", four_amt, " Owned")

	five_1.text = "New
Script"
	five_2.text = str("+", five_val, " Click
	Value")
	five_3.text = str(five_prc, "
	", five_amt, " Owned")

	six_1.text = "New
Level"
	six_2.text = str("+", six_val, " Click
	Value")
	six_3.text = str(six_prc, "
	", six_amt, " Owned")

	seven_1.text = "New
Texture"
	seven_2.text = str("+", seven_val, "
	Combo Max")
	seven_3.text = str(seven_prc, "
	", seven_amt, " Owned")

	eight_1.text = "Do Some
Debugging"
	eight_2.text = str("+", eight_val, " Combo
	Mult")
	eight_3.text = str(eight_prc, "
	", eight_amt, " Owned")

	nine_1.text = "Publish
Game"
	nine_2.text = str("Game resets :D")
	nine_3.text = str("10,000,000")




func _process(_delta: float) -> void:
	Global.clicks += float(Global.acps/60)
	Global.lc += float(Global.acps/60)

	button_1.text = "Add
Player"
	button_2.text = str("+", one_val, " Clicks
	Per Second")
	button_3.text = str(one_prc, "
	", one_amt, " Owned")

	two_1.text = "New
Animation"
	two_2.text = str("+", two_val, " Clicks
	Per Second")
	two_3.text = str(two_prc, "
	", two_amt, " Owned")

	three_1.text = "New
Character"
	three_2.text = str("+", three_val, " Clicks
	Per Second")
	three_3.text = str(three_prc, "
	", three_amt, " Owned")

	four_1.text = "New
Mesh"
	four_2.text = str("+", four_val, " Click
	Value")
	four_3.text = str(four_prc, "
	", four_amt, " Owned")

	five_1.text = "New
Script"
	five_2.text = str("+", five_val, " Click
	Value")
	five_3.text = str(five_prc, "
	", five_amt, " Owned")

	six_1.text = "New
Level"
	six_2.text = str("+", six_val, " Click
	Value")
	six_3.text = str(six_prc, "
	", six_amt, " Owned")

	seven_1.text = "New
Texture"
	seven_2.text = str("+", seven_val, "
	Combo Max")
	seven_3.text = str(seven_prc, "
	", seven_amt, " Owned")

	eight_1.text = "Do Some
Debugging"
	eight_2.text = str("+", eight_val, " Combo
	Mult")
	eight_3.text = str(eight_prc, "
	", eight_amt, " Owned")

	nine_1.text = "Publish
Game"
	nine_2.text = str("Game resets :D")
	nine_3.text = str("10,000,000")





func one():
	if Global.clicks >= one_prc:
		Global.cs += one_prc
		Global.clicks -= one_prc
		Global.acps += one_val
		one_amt += 1
		one_val += 1
		one_prc += one_prc/3
		button_2.text = str("+", one_val, " Clicks
		Per Second")
		button_3.text = str(one_prc, "
		", one_amt, " Owned")

func two():
	if Global.clicks >= two_prc:
		Global.cs += two_prc
		Global.clicks -= two_prc
		Global.acps += two_val
		two_amt += 1
		two_val += 1
		two_prc += two_prc/2
		two_2.text = str("+", two_val, " Clicks
		Per Second")
		two_3.text = str(two_prc, "
		", two_amt, " Owned")

func three():
	if Global.clicks >= three_prc:
		Global.cs += three_prc
		Global.clicks -= three_prc
		Global.acps += three_val
		three_amt += 1
		three_val += 1
		three_prc += three_prc
		three_2.text = str("+", three_val, " Clicks
		Per Second")
		three_3.text = str(three_prc, "
		", three_amt, " Owned")

func four():
	if Global.clicks >= four_prc:
		Global.cs += four_prc
		Global.clicks -= four_prc
		Global.acv += four_val
		four_amt += 1
		four_val += 1
		four_prc += four_prc/3
		four_2.text = str("+", four_val, " Click
		Value")
		four_3.text = str(four_prc, "
		", four_amt, " Owned")

func five():
	if Global.clicks >= five_prc:
		Global.cs += five_prc
		Global.clicks -= five_prc
		Global.acv += five_val
		five_amt += 1
		five_val += 1
		five_prc += five_prc/2
		five_2.text = str("+", five_val, " Click
		Value")
		five_3.text = str(five_prc, "
		", five_amt, " Owned")

func six():
	if Global.clicks >= six_prc:
		Global.cs += six_prc
		Global.clicks -= six_prc
		Global.acv += six_val
		six_amt += 1
		six_val += 1
		six_prc += six_prc
		six_2.text = str("+", six_val, " Click
		Value")
		six_3.text = str(six_prc, "
		", six_amt, " Owned")

func seven():
	if Global.clicks >= seven_prc:
		Global.cs += seven_prc
		Global.clicks -= seven_prc
		Global.max_combo += seven_val
		seven_amt += 1
		seven_prc += seven_prc/3
		seven_2.text = str("+", seven_val, "
		Combo Max")
		seven_3.text = str(seven_prc, "
		", seven_amt, " Owned")

func eight():
	if Global.clicks >= eight_prc:
		Global.cs += eight_prc
		Global.clicks -= eight_prc
		Global.combo_mult += eight_val
		eight_amt += 1
		eight_val += 1
		eight_prc += eight_prc/3
		eight_2.text = str("+", eight_val, " Combo
		Mult")
		eight_3.text = str(eight_prc, "
		", eight_amt, " Owned")

func nine():
	if Global.clicks >= nine_prc:
		Global.cs += nine_prc
		Global.clicks = 0
		Global.acps = 0
		Global.max_combo = 4
		Global.combo_mult = 1
		Global.acv = 0
		
		one_val = 1
		one_prc = 5
		one_amt = 0
		
		two_val = 2
		two_prc = 10
		two_amt = 0
		
		three_val = 4
		three_prc = 15
		three_amt = 0
		
		four_val = 1
		four_prc = 5
		four_amt = 0
		
		five_val = 1
		five_prc = 10
		five_amt = 0
		
		six_val = 1
		six_prc = 15
		six_amt = 0
		
		seven_val = 1
		seven_prc = 5
		seven_amt = 0
		
		eight_val = 1
		eight_prc = 5
		eight_amt = 0
		
		nine_prc = 10000000






func _on_button_pressed() -> void:
	one()
func _on_button_2_pressed() -> void:
	two()
func _on_button_3_pressed() -> void:
	three()
func _on_button_4_pressed() -> void:
	four()
func _on_button_5_pressed() -> void:
	five()
func _on_button_6_pressed() -> void:
	six()
func _on_button_7_pressed() -> void:
	seven()
func _on_button_8_pressed() -> void:
	eight()
func _on_button_9_pressed() -> void:
	nine()
