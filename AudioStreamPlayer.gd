extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _process(delta):
	pitch_scale = sin(get_parent().get_node("o").get_clocks()[0]/1000)/6 + 1
