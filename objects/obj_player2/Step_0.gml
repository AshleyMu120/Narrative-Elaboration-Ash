/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor



//! =not

if (!jumping&& !place_meeting(x,y+10,obj_floor)) falling =true;


if (falling)
{
	
vertical_velocity +=falling_gravity;	



if(vertical_velocity > falling_max_velocity) vertical_velocity=falling_max_velocity;
//if the velocity is greater than the max velocity, then keep the max velocity

//until the player falls to the ground
if(place_meeting(x,y+5, obj_floor))
{
	
	vertical_velocity=0;  //the player reach the floor accurately
	
	var floor_instance = instance_place(x,y+5, obj_floor);
	
	y=floor_instance.y -sprite_height;
	
falling =false;
on_floor=true;
}
	
}

if (on_floor)
{
	if(keyboard_check(vk_space))
	{
	on_floor=false;
	jumping=true;
	
	vertical_velocity-= jump_initial_impulse;  //a sudden burst to the velocity jump
	}
		
	}
	///////////////////////
	
	if(keyboard_check(vk_right))
	{
		x+=moving_speed;
		
	}
	
	if(keyboard_check(vk_left))
	{
		x-=moving_speed;
	}
	
	//////////////////////////
	////seting up the keyboard
	
if (jumping)
{
  if(keyboard_check(vk_space))
  {
	vertical_velocity -=jump_acceleration;  
  }
	else jumping=false;
	
	//the player will drop when it exceeds the jump_max_velocity
	
	if(vertical_velocity < -jump_max_velocity) vertical_velocity = -jump_max_velocity;
	
	jump_timer++;  //jump to a certain time and they will fall
	
	if(jump_timer > jump_duration)
	{
	jumping=false;
	jump_timer=0;
		
	}
	
}













