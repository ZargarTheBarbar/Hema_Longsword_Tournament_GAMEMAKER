///receive_bind()
anim_start = true;

switch(dir)
{
    case "right": 
         with (pnts)
         {
            sprite_index = spr_pants_bind_clash_right;
            
         }
         with (jckt)
         {
            sprite_index = spr_jacket_bind_clash_right;
         }
         
         switch (fencer)
         {
            case "red":
                sprite_index = spr_red_bind_clash_right;
                    break;
            case "blue":
                sprite_index = spr_blue_bind_clash_right;
                    break;
         }

         break;
        
    case "left":
        with (pnts)
        {
            sprite_index = spr_pants_bind_clash_left;
        }
        with (jckt)
        {
            sprite_index = spr_jacket_bind_clash_left;
        }
        
        switch (fencer)
         {
            case "red":
                sprite_index = spr_red_bind_clash_left;
                    break;
            case "blue":
                sprite_index = spr_blue_bind_clash_left;
                    break;
         }
         
         break;
    
    case "down":
        with (pnts)
        {
            sprite_index = spr_pants_bind_clash_down;
        }
        with (jckt)
        {
            sprite_index = spr_jacket_bind_clash_down;
        }
        
        switch (fencer)
         {
            case "red":
                sprite_index = spr_red_bind_clash_down;
                    break;
            case "blue":
                sprite_index = spr_blue_bind_clash_down;
                    break;
         }
         
        break;
    
    case "up":
        with (pnts)
        {
            sprite_index = spr_pants_bind_clash_up;

        }
        with (jckt)
        {
            sprite_index = spr_jacket_bind_clash_up;

        }
        
        switch (fencer)
         {
            case "red":
                sprite_index = spr_red_bind_clash_up;
                    break;
            case "blue":
                sprite_index = spr_blue_bind_clash_up;
                    break;
         }
         
        break;
    
    default:
        dir = "right";
}
image_index = 0;
image_speed = 10/room_speed;

if(id == global.opponent_id)
{
    win_bind = false;
    lose_bind = false; 
    alarm[9] = bind_time;
}


