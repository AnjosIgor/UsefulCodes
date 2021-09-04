#define as colisões dos pontos em volta das formas

func set_collision(texture) :
	add_child(Area2D.new())
	get_child(0).add_child(CollisionPolygon2D.new())

	var bm = BitMap.new()
	bm.create_from_image_alpha(texture.get_data())
	var rect = Rect2(0, 0, texture.get_width(), texture.get_height())
	var polygons_list = bm.opaque_to_polygons(rect, 0.0001)

	for polygon in polygons_list:
		var collider = CollisionPolygon2D.new()
		collider.polygon = polygon
		add_child(collider)

	pass
