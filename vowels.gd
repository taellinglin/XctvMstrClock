extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const speed = 0.000001
var clock_0 = 0
var clock_1 = 0
var clock_2 = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _process(delta):
	clock_0 += 1
	if clock_0 == 1000:
		#clock_0 = 0
		clock_1 += 1
		if clock_1 == 1000:
			#clock_1 = 0
			clock_2 += 1
	rotate_z(speed*clock_0)
	rotate_y(speed*clock_1)
	rotate_x(speed*clock_2)
