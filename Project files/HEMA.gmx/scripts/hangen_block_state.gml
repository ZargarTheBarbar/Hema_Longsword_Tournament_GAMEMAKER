///hangen_block_state()
state_str = "hangen_block";

if (!anim_start)
{
    anim_start = true;
    disable_input = true;
    
    right = false;
    left = false;
    down = false; 
    up = false;
    
    play_clash_sound();
    
    switch(dir)
    {
        case "right":
             hspd = -walkspd;
             vspd = 0; 
            
             with (pnts)
             {
                sprite_index = spr_pants_hangen_block_right;
             }
             with (jckt)
             {
                sprite_index = spr_jacket_hangen_block_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_block_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_block_right;
                        break;
             }
             
                break;
            
        case "left":
            hspd = walkspd;
            vspd = 0; 
            with (pnts)
            {
                sprite_index = spr_pants_hangen_block_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_block_left;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_block_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_block_left;
                        break;
             }
             
                break;
        
        case "down":
            hspd = 0;
            vspd = -walkspd;
            
            with (pnts)
            {
                sprite_index = spr_pants_hangen_block_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_block_down;
            }
            
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_block_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_block_down;
                        break;
             }
             
                break;
        
        case "up":
            hspd = 0;
            vspd = walkspd;
            
            with (pnts)
            {
                sprite_index = spr_pants_hangen_block_up;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_hangen_block_up;
            }
             
            switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_hangen_block_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_hangen_block_up;
                        break;
             }
            
                break;
        
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = 10/room_speed;
}

move(Solid);



