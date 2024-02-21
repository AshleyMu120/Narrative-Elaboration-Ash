/// @description Insert description here
// You can write your code in this editor


var distance_to_player = abs(distance_to_object(obj_player));

if (distance_to_player <=50){
	if (keyboard_check_pressed(vk_space)){
		
		
	var textbox = instance_create_depth(x, y+60, 0, obj_textbox, {"text" : text, "spr_width" : sprite_width, 
					"spr_height": sprite_height, "textbox_offset_x":100, "textbox_offset_y": 100});
					audio_play_sound(snd_talking,1,false)
	}
}








