///grapple_state()

state_str = "grapple";
var attack_speed = -2;

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
                sprite_index = spr_pants_grapple_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_grapple_right;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_grapple_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_grapple_right;
                        break;
            }
                break;
                
        case "left":
            hspd = attack_speed;
            vspd = 0;
            
            with (pnts)
            {
                sprite_index = spr_pants_grapple_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_grapple_left;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_grapple_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_grapple_left;
                        break;
            }
                break;  
                
        case "down":
            hspd = 0;
            vspd = -attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_grapple_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_grapple_down;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_grapple_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_grapple_down;
                        break;
            }
                break;
                
        case "up":
            hspd = 0;
            vspd = attack_speed;
            
            with (pnts)
            {
                sprite_index = spr_pants_grapple_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_grapple_up;
            }
             
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_grapple_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_grapple_up;
                        break;
            }
                break;             
    }
    image_index = 0;
    image_speed = img_spd;
}

if (image_index == 2)
{
    hspd = 0;
    vspd = 0;
    
    with(target)
    {
        anim_start = false;
        state = thrown_state;
        script_execute(state);
    }
}

move(Solid);
