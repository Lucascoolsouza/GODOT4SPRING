extends Node
class_name SpringPlayer

var spring_stiffness = 25.0  # Adjust stiffness as needed
var spring_damping = 1.0    # Adjust damping to control oscillations
var velocity = 0.0
var time = 0.0

func SPRINGCALL(time,a,b):
	var target_position = b
	var spring_force = (target_position - a) * spring_stiffness
	velocity += spring_force * time
	velocity -= velocity * spring_damping * time 
	a += velocity * time
	a = lerp(a, target_position, time * 2.0)
	return a
