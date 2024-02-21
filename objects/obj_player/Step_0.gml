if (keyboard_check(vk_right) && x+sprite_width<room_width)
{
	x+= walk_speed;
	//audio_play_sound(snd_walking,0,false);
	sprite_index=spr_player_right;
	image_xscale=1
	idlestate=spr_player_idle;
   if (x>obj_camera.x+60) obj_camera.x +=walk_speed; //only move to the right at the edge of the camera
}


if (keyboard_check(vk_left)&& x>0)
{
	x-= walk_speed;
	//audio_play_sound(snd_walking,0,false);
	sprite_index=spr_player_right;
	image_xscale=-1
	idlestate=spr_player_idle;
	if(x<(obj_camera.x+obj_camera.view_width)-(60+sprite_width)) obj_camera.x -=walk_speed; //the camera will move backwards 30

}

if(keyboard_check(vk_up))
{
	y-=walk_speed
	//audio_play_sound(snd_walking,0,false);
	sprite_index=spr_player_backward
	idlestate=spr_backplayer_idle;//CHANGE
if(y<(obj_camera.y+obj_camera.view_width)-(60+sprite_width)) obj_camera.y -=walk_speed; 

}

if(keyboard_check(vk_down))
{y+=walk_speed;
	//audio_play_sound(snd_walking,0,false);
	sprite_index=spr_playerforward
	idlestate=spr_player_idle;
	 if (y>obj_camera.y+60) obj_camera.y +=walk_speed;
	
}

if(!keyboard_check(vk_anykey)){
	sprite_index=idlestate
}

show_debug_message(ds_list_size(inventory));




