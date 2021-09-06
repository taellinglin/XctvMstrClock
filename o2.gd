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
	if clock_0 == 100:
		clock_0 = 0
		clock_1 += 1
		if clock_1 == 100:
			clock_1 = 0
			clock_0 = 0
			clock_2 += 1
			if clock_2 >= 1200:
				clock_2 = 0
				clock_1 = 0
				clock_0 = 0
	rotate_z(speed*clock_0)
	rotate_y(speed*clock_1)
	rotate_x(speed*clock_2)
	print("Clock 0: ", clock_0, "| Clock 1: ", clock_1, "| Clock 2: ", clock_2)
	#scale = Vector3(clock_0/10000, clock_0/10000, clock_0/10000)*1000
	for children in get_children():
		rotate_x(speed*clock_0)
		rotate_z(speed*clock_1)
		rotate_y(speed*clock_2)
		
		
# Called everrotate_z(sin(clock_0))y frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
func get_clocks():
	var clocks = [clock_0, clock_1, clock_2]
	return clocks





func _on_AudioStreamPlayer_finished():
	get_parent().get_node("AudioStreamPlayer").play()
