extends ScrollContainer
@onready var acps_timer: Timer = $"acps timer"
@onready var button_1: Button = $HBoxContainer/VBoxContainer/Player/Button
@onready var button_2: Button = $HBoxContainer/VBoxContainer/Player/Button2
@onready var button_3: Button = $HBoxContainer/VBoxContainer/Player/Button3

@onready var two_1: Button = $HBoxContainer/VBoxContainer/Animation/two
@onready var two_2: Button = $HBoxContainer/VBoxContainer/Animation/two2
@onready var two_3: Button = $HBoxContainer/VBoxContainer/Animation/two3

@onready var three_1: Button = $HBoxContainer/VBoxContainer/Character/three
@onready var three_2: Button = $HBoxContainer/VBoxContainer/Character/three2
@onready var three_3: Button = $HBoxContainer/VBoxContainer/Character/three3

@onready var four_1: Button = $HBoxContainer/VBoxContainer/Mesh/four
@onready var four_2: Button = $HBoxContainer/VBoxContainer/Mesh/four2
@onready var four_3: Button = $HBoxContainer/VBoxContainer/Mesh/four3

@onready var five_1: Button = $HBoxContainer/VBoxContainer/Script/five
@onready var five_2: Button = $HBoxContainer/VBoxContainer/Script/five2
@onready var five_3: Button = $HBoxContainer/VBoxContainer/Script/five3

@onready var six_1: Button = $HBoxContainer/VBoxContainer/Level/six
@onready var six_2: Button = $HBoxContainer/VBoxContainer/Level/six2
@onready var six_3: Button = $HBoxContainer/VBoxContainer/Level/six3

@onready var seven_1: Button = $HBoxContainer/VBoxContainer/Texture/seven
@onready var seven_2: Button = $HBoxContainer/VBoxContainer/Texture/seven2
@onready var seven_3: Button = $HBoxContainer/VBoxContainer/Texture/seven3

@onready var eight_1: Button = $HBoxContainer/VBoxContainer/Debugging/eight
@onready var eight_2: Button = $HBoxContainer/VBoxContainer/Debugging/eight2
@onready var eight_3: Button = $HBoxContainer/VBoxContainer/Debugging/eight3

@onready var nine_1: Button = $"HBoxContainer/VBoxContainer/Release game/nine"
@onready var nine_2: Button = $"HBoxContainer/VBoxContainer/Release game/nine2"
@onready var nine_3: Button = $"HBoxContainer/VBoxContainer/Release game/nine3"



var one_val = 1
var one_prc = 5
var one_amt = 0

var two_val = 1
var two_prc = 5
var two_amt = 0

var three_val = 1
var three_prc = 5
var three_amt = 0

var four_val = 1
var four_prc = 5
var four_amt = 0

var five_val = 1
var five_prc = 5
var five_amt = 0

var six_val = 1
var six_prc = 5
var six_amt = 0

var seven_val = 1
var seven_prc = 5
var seven_amt = 0

var eight_val = 1
var eight_prc = 5
var eight_amt = 0

var nine_val = 1
var nine_prc = 5
var nine_amt = 0




func _ready() -> void:
	acps_timer.start()


	button_2.text = str("+", one_val, " Clicks
	Per Second")
	button_3.text = str(one_prc, "
	", one_amt, " Owned")

	two_2.text = str("+", two_val, " Clicks
	Per Second")
	two_3.text = str(two_prc, "
	", two_amt, " Owned")

	three_2.text = str("+", three_val, " Clicks
	Per Second")
	three_3.text = str(three_prc, "
	", three_amt, " Owned")

	four_2.text = str("+", four_val, " Clicks
	Value")
	four_3.text = str(four_prc, "
	", four_amt, " Owned")

	five_2.text = str("+", five_val, " Clicks
	Value")
	five_3.text = str(five_prc, "
	", five_amt, " Owned")

	six_2.text = str("+", six_val, " Clicks
	Value")
	six_3.text = str(six_prc, "
	", six_amt, " Owned")

	seven_2.text = str("+", seven_val, "
	Combo Max")
	seven_3.text = str(seven_prc, "
	", seven_amt, " Owned")

	eight_2.text = str("+", eight_val, " Combo
	Mult")
	eight_3.text = str(eight_prc, "
	", eight_amt, " Owned")

	nine_2.text = str("Game resets :D")
	nine_3.text = str(nine_prc)



func _process(delta: float) -> void:
	pass

func one():
	if Global.clicks >= one_prc:
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
	print("two")

func three():
	print("three")

func four():
	print("four")

func five():
	print("five")

func six():
	print("six")

func seven():
	if Global.clicks >= seven_prc:
		Global.clicks -= seven_prc
		Global.max_combo += seven_val
		seven_amt += 1
		seven_val += 1
		seven_prc += seven_prc/3
		seven_2.text = str("+", seven_val, "
		Combo Max")
		seven_3.text = str(seven_prc, "
		", seven_amt, " Owned")

func eight():
	print("eight")

func nine():
	print("nine")

func _on_button_pressed() -> void:
	one()

func _on_button_2_pressed() -> void:
	one()

func _on_button_3_pressed() -> void:
	one()

func _on_two_pressed() -> void:
	two()

func _on_two_2_pressed() -> void:
	two()

func _on_two_3_pressed() -> void:
	two()

func _on_three_pressed() -> void:
	three()

func _on_three_2_pressed() -> void:
	three()

func _on_three_3_pressed() -> void:
	three()

func _on_four_pressed() -> void:
	four()

func _on_four_2_pressed() -> void:
	four()

func _on_four_3_pressed() -> void:
	four()

func _on_five_pressed() -> void:
	five()

func _on_five_2_pressed() -> void:
	five()

func _on_five_3_pressed() -> void:
	five()

func _on_six_pressed() -> void:
	six()

func _on_six_2_pressed() -> void:
	six()

func _on_six_3_pressed() -> void:
	six()

func _on_seven_pressed() -> void:
	seven()

func _on_seven_2_pressed() -> void:
	seven()

func _on_seven_3_pressed() -> void:
	seven()

func _on_eight_pressed() -> void:
	eight()

func _on_eight_2_pressed() -> void:
	eight()

func _on_eight_3_pressed() -> void:
	eight()

func _on_nine_pressed() -> void:
	nine()

func _on_nine_2_pressed() -> void:
	nine()

func _on_nine_3_pressed() -> void:
	nine()


func _on_acps_timer_timeout() -> void:
	Global.clicks += Global.acps
