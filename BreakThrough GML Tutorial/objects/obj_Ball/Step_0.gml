/// @description Ball Control
// First check if the ball is moving...
if !go
    {
    // Ball isn't moving so let's see if the game can be started by pressing "Space"
    if keyboard_check_pressed(vk_space)
        {
        // Set the ball speed and direction and the "go" variable so this code won't run again
        go = true;
        speed = spd;
        direction = dir;
        audio_play_sound(snd_Click, 0, false);
        }
    }