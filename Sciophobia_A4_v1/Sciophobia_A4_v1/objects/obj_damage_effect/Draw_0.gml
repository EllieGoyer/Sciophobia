/// @description Draw Number

alpha += 0.02;
y_pos += 1;
draw_text_color(x-8, y-y_pos, damageDealt, c_white,  c_white,  c_white,  c_white, 1-alpha);

if (alpha == 1) { instance_destroy(); }