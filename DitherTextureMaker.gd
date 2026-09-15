# Make "DitherTexture.png" using this gdscript.
# Import "DitherTexture.png" with lossless compression.
# Put "DitherTexture.png" in shader of your choice

# To learn more about Ordered Dither Pattern check out this link
# https://en.wikipedia.org/wiki/Ordered_dithering

@tool
extends Node
@export var make_image:=false

func _process(_delta: float) -> void: if make_image:
	var OrderedDitherImage = Image.create_from_data(
		8,8,false,Image.FORMAT_R8,
		[0,48,12,60,3,51,15,63, 32,16,44,28,35,19,47,31,
		8,56,4,52,11,59,7,55, 40,24,36,20,43,27,39,23,
		2,50,14,62,1,49,13,61, 34,18,46,30,33,17,45,29,
		10,58,6,54,9,57,5,53, 42,26,38,22,41,25,37,21])
	OrderedDitherImage.save_png("DitherTexture.png")
	make_image=false
