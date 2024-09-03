extends Node3D

@onready var timer: Timer = $Timer
@onready var rigid_body_3d: RigidBody3D = $RigidBody3D
@onready var area_3d: Area3D = $Area3D

func _ready() -> void:
	timer.timeout.connect(freeze)
	area_3d.body_entered.connect(entered)
	area_3d.body_exited.connect(exited)

func entered(node: Node3D) -> void:
	print("Node entered: ", node.get_name())

func exited(node: Node3D) -> void:
	print("Node exited: ", node.get_name())

func freeze() -> void:
	print("Freezing")
	rigid_body_3d.freeze = true
