extends Spatial

var i_clock = 0
var i = 0
var i_child = 0

var spinner_material_1 = Material.new()
var spinner_material_2 = Material.new()
var spinner_letter_mat_1 = load("res://obj/daemon_red.tres")
var spinner_letter_mat_2 = load("res://obj/daemon_blue.tres")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var a_text = MeshInstance.new()
var b_text = MeshInstance.new()
var c_text = MeshInstance.new()
var d_text = MeshInstance.new()
var e_text = MeshInstance.new()
var f_text = MeshInstance.new()
var g_text = MeshInstance.new()
var h_text = MeshInstance.new()
var i_text = MeshInstance.new()
var j_text = MeshInstance.new()
var k_text = MeshInstance.new()
var l_text = MeshInstance.new()
var m_text = MeshInstance.new()
var n_text = MeshInstance.new()
var o_text = MeshInstance.new()
var p_text = MeshInstance.new()
var q_text = MeshInstance.new()
var r_text = MeshInstance.new()
var s_text = MeshInstance.new()
var t_text = MeshInstance.new()
var u_text = MeshInstance.new()
var v_text = MeshInstance.new()
var w_text = MeshInstance.new()
var x_text = MeshInstance.new()
var y_text = MeshInstance.new()
var z_text = MeshInstance.new()
var a_mesh = load("res://obj/a.obj")
var b_mesh = load("res://obj/b.obj")
var c_mesh = load("res://obj/c.obj")
var d_mesh = load("res://obj/d.obj")
var e_mesh = load("res://obj/e.obj")
var f_mesh = load("res://obj/f.obj")
var g_mesh = load("res://obj/g.obj")
var h_mesh = load("res://obj/h.obj")
var i_mesh = load("res://obj/i.obj")
var j_mesh = load("res://obj/j.obj")
var k_mesh = load("res://obj/k.obj")
var l_mesh = load("res://obj/l.obj")
var m_mesh = load("res://obj/m.obj")
var n_mesh = load("res://obj/n.obj")
var o_mesh = load("res://obj/o.obj")
var p_mesh = load("res://obj/p.obj")
var q_mesh = load("res://obj/q.obj")
var r_mesh = load("res://obj/r.obj")
var s_mesh = load("res://obj/s.obj")
var t_mesh = load("res://obj/t.obj")
var u_mesh = load("res://obj/u.obj")
var v_mesh = load("res://obj/v.obj")
var w_mesh = load("res://obj/w.obj")
var x_mesh = load("res://obj/x.obj")
var y_mesh = load("res://obj/y.obj")
var z_mesh = load("res://obj/z.obj")


# Called when the node enters the scene tree for the first time.
func _ready():
	a_text.set_mesh(a_mesh)
	b_text.set_mesh(b_mesh)
	c_text.set_mesh(c_mesh)
	d_text.set_mesh(d_mesh)
	e_text.set_mesh(e_mesh)
	f_text.set_mesh(f_mesh)
	g_text.set_mesh(g_mesh)
	h_text.set_mesh(h_mesh)
	i_text.set_mesh(i_mesh)
	j_text.set_mesh(j_mesh)
	k_text.set_mesh(k_mesh)
	l_text.set_mesh(l_mesh)
	m_text.set_mesh(m_mesh)
	n_text.set_mesh(n_mesh)
	o_text.set_mesh(o_mesh)
	p_text.set_mesh(p_mesh)
	q_text.set_mesh(q_mesh)
	r_text.set_mesh(r_mesh)
	s_text.set_mesh(s_mesh)
	t_text.set_mesh(t_mesh)
	u_text.set_mesh(u_mesh)
	v_text.set_mesh(v_mesh)
	w_text.set_mesh(w_mesh)
	x_text.set_mesh(x_mesh)
	y_text.set_mesh(y_mesh)
	z_text.set_mesh(z_mesh)
	
	var spinner_letters = [b_text, c_text, d_text, f_text, g_text, h_text, j_text, k_text, l_text, m_text, n_text, p_text, q_text, r_text, s_text, t_text, v_text, w_text, x_text, y_text, z_text]
	var spinner = get_node("spinner")
	var i = 0
	var last_spinner	
	for spinner_letter in spinner_letters:
		var rand2 = randi() % 2
		i += 1
		randomize()
		var materials = [spinner_letter_mat_1, spinner_letter_mat_2]
		spinner_letter.set_material_override(materials[rand2])
		#spinner_letter.transform = spinner_letter.transform.x + 10
		spinner_letter.translate(Vector3(0.6 * i , 0,0))	
		if(get_node("spinner").get_child_count() > 0):
			last_spinner = get_node("spinner").get_children().front()
			last_spinner.add_child(spinner_letter)
		else:
			get_node("spinner").add_child(spinner_letter)
			#print_debug(get_indexed($spinner))
			
	set_process(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta): 
	i_clock +=1	
	var spinner_children = get_node("spinner").get_children() as Array
	
	for spinner_child in spinner_children:
		i += 1
		var rand2 = randi() % 2
		randomize()
		var materials = [spinner_letter_mat_1, spinner_letter_mat_2]
		spinner_child.set_material_override(materials[rand2])
		spinner_child.rotate_x(0.00001 * i)
		print_debug("Children of Children: ", spinner_child.get_children())
		for child in spinner_child.get_children():
			i_child += 1
			child.rotate_x(0.0001 * i_child)
		spinner_child.translate(Vector3(i * i*sin(i_clock), i * sin(i_clock), i * sin(i_clock)))	
		
		
	#get_node("Camera").translate(Vector3(sin(i_clock), i * sin(i_clock), 0))
