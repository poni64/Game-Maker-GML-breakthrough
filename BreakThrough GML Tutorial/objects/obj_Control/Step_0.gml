/// @description Check Room Restart
if instance_number(obj_Brick) <= 0
    {
    room_restart();
    }
else
    {
    if state == "GAMEOVER"
        {
        if keyboard_check(vk_anykey)
            {
            audio_play_sound(snd_Click, 0, false);
            global.player_score = 0;
            global.player_lives = 3;
            room_restart();
            }
        }
    }