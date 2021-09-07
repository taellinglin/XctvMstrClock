extends AudioStreamPlayer3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pitch = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass
	pitch = get_parent().get_clocks()[0]
	if pitch != 0:
		set_pitch_scale(1/(pitch))
	else:
		set_pitch_scale(pitch/100)
	
	rotate_z(get_parent().rotation.z)
	rotate_y(get_parent().rotation.y)
	rotate_x(get_parent().rotation.x)
	


func _on__o_finished():
	play()
