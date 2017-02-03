///duplieren_state()

cancel = false;
state_str = "duplieren";
var attack_speed = -2;

if(!anim_start)
{
    anim_start = true;
    layer_control = true;
    
    var img_spd = 10/room_speed;

    switch (dir)
    {
        case "right":
            hspd = -attack_speed;
            vspd = 0;
            
            with (pnts)
            {
                sprite_index = spr_pants_duplieren_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_duplieren_right;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_duplieren_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_duplieren_right;
                        break;
            }
                break;
                
        case "left":
            hspd = attack_speed;
            vspd = 0;
            
            with (pnts)
            {
                sprite_index = spr_pants_duplieren_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_duplieren_left;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_duplieren_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_duplieren_left;
                        break;
            }
                break;  
                
        case "down":
            hspd = 0;
            vspd = -attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_duplieren_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_duplieren_down;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_duplieren_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_duplieren_down;
                        break;
            }
                break;
                
        case "up":
            hspd = 0;
            vspd = attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_duplieren_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_duplieren_up;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_duplieren_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_duplieren_up;
                        break;
            }
                break;             
    }
    image_index = 0;
    image_speed = img_spd;
}

// play sound
if (image_index == 1)
{
    if(!audio_is_playing(snd_swing_a))
    {
        audio_emitter_gain(audio_em, .65);
        audio_play_sound_on(audio_em, snd_swing_a, false, 10);
    }
}

if (image_index == 3)
{
    hspd = 0;
    vspd = 0;
    
    with(target)
    {
        anim_start = false;
        state = damage_state;
        script_execute(state);
    }
}

move(Solid);
