// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function open_door(door){
	
	door.state = "opened";
	if (door.target_cover != "") {
		open_cover(door.target_cover);
	}

}