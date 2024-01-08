Overview

Yes, you can easly implement spring in your game, and is lightweight.

Installation
Just copy the code from springplayer to a new script in .gd

Instructions.
after you cloning the springplayer code, go in your script, and make a variable.
////////
var Spring = SpringPlayer.new()
/////////
and make something like this,
/////////
func _process(delta):
	var time = delta
	yournodeA.position.y = Spring.SPRINGCALL(time,yournodeA.position.y ,yournodeB.position.y )
/////////

and is that!
[fast copy-paste here]
/////////////////
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
//////////////////

any suggestion is welcome! have a good coding!
