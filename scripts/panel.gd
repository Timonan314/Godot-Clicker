extends Panel
@onready var cps_per_second: Label = $"Cps per second"
@onready var clicks: Label = $Clicks


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	clicks.text = str(int(round(Global.clicks)))
	cps_per_second.text = str(int(round(Global.cps)), " Per Second")
