extends Node2D
# you dont need to use that, is just a example about how i can call the function class in any script.
@onready var icon = $Icon
@onready var icon_2 = $Icon2
var Spring = SpringPlayer.new()

func _process(delta):
	var time = delta
	icon_2.position.y = Spring.SPRINGCALL(time,icon_2.position.y ,icon.position.y )
