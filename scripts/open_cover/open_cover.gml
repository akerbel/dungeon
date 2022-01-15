// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function open_cover(cover_name){
	
	var covers = layer_get_all_elements("Covers");
	for (var i = 0; i < array_length(covers); i++) {
		var cover = layer_instance_get_instance(covers[i]);
		if (cover.cover_name == cover_name) {
			instance_destroy(cover);
		}
	}
	
}