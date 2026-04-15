extends VehicleBody3D

@export var MAX_STEER = 0.9
@export var ENGINE_POWER = 300

func _physics_process(delta):
		steering = move_toward(steering, Input.get_axis("Right", "Left") * MAX_STEER, delta *10)
		engine_force = Input.get_axis("Down", "Up") * ENGINE_POWER
