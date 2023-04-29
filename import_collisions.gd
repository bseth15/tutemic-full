@tool
extends EditorScenePostImport


func _post_import(scene: Node) -> Object:
	scene = scene as Node3D
	var mesh := scene.get_child(0) as MeshInstance3D
	if mesh == null:
		return scene
	mesh.create_trimesh_collision()
	return scene
