///thrown_state()
var attack_speed = -2;

state_str = "thrown";

if(!anim_start)
{
    anim_start = true;
    layer_control = true;
    var img_spd = 6/room_speed;

    switch (dir)
    {
        case "right":
            hspd = -attack_speed;
            vspd = 0;
            
            with (pnts)
            {
                sprite_index = spr_pants_thrown_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_thrown_up;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_thrown_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_thrown_up;
                        break;
            }
                break;
                
        case "left":
            hspd = attack_speed;
            vspd = 0;
            
            with (pnts)
            {
                sprite_index = spr_pants_thrown_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_thrown_down;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_thrown_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_thrown_down;
                        break;
            }
                break;  
                
        case "down":
            hspd = 0;
            vspd = -attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_thrown_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_thrown_down;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_thrown_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_thrown_down;
                        break;
            }
                break;
                
        case "up":
            hspd = 0;
            vspd = attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_thrown_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_thrown_up;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_thrown_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_thrown_up;
                        break;
            }
                break;             
    }
    image_index = 0;
    image_speed = img_spd;
}

// play sound
if (image_index == 3 || image_index == 5)
{
    if(!audio_is_playing(snd_slam))
    {
        audio_emitter_gain(audio_em, .65);
        audio_play_sound_on(audio_em, snd_slam, false, 10);
    }
}

if (image_index == 5)
{
    hspd = 0;
    vspd = 0;
}

move_no_solid();
