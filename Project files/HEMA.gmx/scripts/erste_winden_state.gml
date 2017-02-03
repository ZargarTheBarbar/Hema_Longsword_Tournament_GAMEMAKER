///erste_winden_state()

state_str = "erste_winden";
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
                sprite_index = spr_pants_erste_winden_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_erste_winden_right;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_erste_winden_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_erste_winden_right;
                        break;
            }
                break;
                
        case "left":
            hspd = attack_speed;
            vspd = 0;
            
            with (pnts)
            {
                sprite_index = spr_pants_erste_winden_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_erste_winden_left;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_erste_winden_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_erste_winden_left;
                        break;
            }
                break;  
                
        case "down":
            hspd = 0;
            vspd = -attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_erste_winden_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_erste_winden_down;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_erste_winden_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_erste_winden_down;
                        break;
            }
                break;
                
        case "up":
            hspd = 0;
            vspd = attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_erste_winden_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_erste_winden_up;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_erste_winden_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_erste_winden_up;
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
    if(!audio_is_playing(snd_thrust))
    {
        audio_emitter_gain(audio_em, .65);
        audio_play_sound_on(audio_em, snd_thrust, false, 10);
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
