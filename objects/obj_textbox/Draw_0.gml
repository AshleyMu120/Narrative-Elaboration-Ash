

draw_set_color(c_black);
draw_rectangle(x - spr_width/2 - textbox_offset_x, y - spr_height/2 - textbox_offset_y
				, x + spr_width/2 + textbox_offset_x, y - spr_height/2, false);
draw_set_color(c_white);
//var str = "I ate an apple." + "\n"
		//	+ "hello"
draw_text(x - spr_width/2 - textbox_offset_x, y - spr_height/2 - textbox_offset_y, text);

