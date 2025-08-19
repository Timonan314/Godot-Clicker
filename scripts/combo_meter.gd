extends Label
@onready var bar: TextureRect = $bar
var click_count = 0
var last_sec_click = 0
var mcps = 0
var width = 0
@onready var mcps_timer: Timer = $"mcps Timer"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mcps_timer.start()
	last_sec_click = click_count

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var tween = get_tree().create_tween()
	tween.tween_property(bar, "size:x", width, 0.25)
	if Input.is_action_just_pressed("click") and Global.clickable == true:
		click_count += 1

func _on_mcps_timer_timeout() -> void:
	mcps = click_count - last_sec_click
	mcps_timer.start()
	last_sec_click = click_count
	if mcps < 16:
		width = mcps * (400/15)
	else:
		width = 400
	Global.click_val = mcps * Global.combo_multiplier
