extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _process(delta):
	speed = get_node("Panel").get_node("speed").value
	get_node("o").speed = speed
	get_node("o2").speed = speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
