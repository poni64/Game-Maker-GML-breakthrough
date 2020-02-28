/// @description Bounce
vspeed *= -1; // Reverse the vertical speed
var _s = speed; // Store the current speed
var _dir = point_direction(other.x, other.y + 32, x, y);
var _dist = point_distance(x, y, other.x, other.y + 32)
// Add to direction based on position of bounce
motion_add(_dir, _dist / 5);
// Maintain the speed
speed = _s;
audio_play_sound(snd_Bounce, 0, false);