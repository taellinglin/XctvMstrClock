extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _process(delta):
	rotate_object_local(Vector3(0,0,1), -0.1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
