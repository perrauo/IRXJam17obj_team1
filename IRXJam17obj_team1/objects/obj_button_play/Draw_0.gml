/// @description draw button text
// You can write your code in this editor

w = c_white;
font= fnt_title;

btn_txt = "Play";

//update tb width based on text size
box_width = string_length(btn_txt)* box_width_mult;

//drawing box
draw_set_alpha(box_alpha);
draw_rectangle_color(text_posx, text_posy, text_posx+box_width, text_posy+box_height,w,w,w,w, false);
draw_set_alpha(1); //reset normal alpha

//drawing text
draw_set_font(font);
draw_set_color(w);
draw_text_transformed(x, y, btn_txt, scale, scale, 0);
