extends Panel
@onready var cps_per_second: Label = $"Cps per second"
@onready var clicks: Label = $Clicks


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	clicks.text = str(Global.clicks)
	cps_per_second.text = str(Global.cps, " Per Second")
