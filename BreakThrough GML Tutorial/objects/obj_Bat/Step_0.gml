/// @description Move
if keyboard_check(vk_left) // Check for the left arrow key being held down
    {
    // This check is to make sure the bat doesn't go out of the room to the left
    if x > sprite_get_xoffset(sprite_index) + spd
        {
        x -= spd; // Move the bat
        }
    else
        {
        x = sprite_get_xoffset(sprite_index); // Clamp the bat to the leftmost side
        }
    }
if keyboard_check(vk_right) // Check for the right arrow key being held down
    {
    // This check is to make sure the bat doesn't go out of the room to the right
    if x < room_width - sprite_get_xoffset(sprite_index) - spd
        {
        x += spd;
        }
    else
        {
        x = room_width - sprite_get_xoffset(sprite_index);
        }
    }
// Move the ball object with the bat if the ball isn't moving yet
with (obj_Ball)
    {
    if !go x = other.x;
    }