extends Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var cps_timer: Timer = $"cps timer"
var last_sec_clicks
var click_stopped
const angle_max = 20
var angle = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cps_timer.start()
	last_sec_clicks = Global.clicks

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	randomize()
	angle = randi_range(0, angle_max) - angle_max/2

func _input(_event: InputEvent) -> void:
	if Global.clickable == true:
		if Input.is_action_just_pressed("click"):
			Global.clicks += Global.click_val
			var tweenclick = get_tree().create_tween()
			animation_player.play("click")
			tweenclick.tween_property($".", "rotation_degrees", angle, 0.25)
		if Input.is_action_just_released("click") and animation_player.is_playing() == true:
			release()


func _on_timer_timeout() -> void:
	Global.cps = Global.clicks - last_sec_clicks
	cps_timer.start()
	last_sec_clicks = Global.clicks


func _on_click_hitbox_mouse_entered() -> void:
	Global.clickable = true

func _on_click_hitbox_mouse_exited() -> void:
	Global.clickable = false
	if animation_player.is_playing() == true:
		release()

func release():
	var tweenrelease = get_tree().create_tween()
	animation_player.play("release")
	tweenrelease.tween_property($".", "rotation_degrees", 0, 0.25)
