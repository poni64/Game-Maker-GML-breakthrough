/// @description Draw Values
// Set draw properties
draw_set_colour(c_white);
draw_set_font(fnt_Game);
// Draw the player score
draw_set_halign(fa_left);
draw_text(8, 8, "Score: " + string(global.player_score));
// Draw the high score
draw_set_halign(fa_right);
draw_text(room_width - 8, 8, "Hi Score: " + string(global.high_score));
// Draw the player lives as sprites
var _x = (room_width / 2) - (32 * (global.player_lives - 1));
repeat(global.player_lives)
    {
    draw_sprite_ext(spr_Bat, 0, _x, room_height - 16, 0.75, 0.75, 1, c_white, 0.5);
    _x += 64;
    }