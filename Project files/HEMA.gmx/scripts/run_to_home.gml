///run_to_home()

right = false;
left = false;
down = false;
up = false;
vspd = 0;
hspd = 0;

var buffer = 4;

if (home_y > (y + buffer))
{
    down = true;
    vspd = 2;
}
if (home_y < (y - buffer))
{
    up = true;
    vspd = -2;
}
if (home_x > (x + buffer))
{
    right = true;
    hspd = 2;
}
if (home_x < (x - buffer))
{
    left = true;
    hspd = -2;
}
if (home_x <= x + buffer && home_x >= x - buffer && home_y <= y + buffer && home_y >= y - buffer)
{
    switch (fencer)
     {
        case "red":
            dir = "right";
            state = vomtag_move_state;
                break;
        case "blue":
            dir = "left";
            state = vomtag_move_state;
                break;
     }
}
else
{
    if(right)
    {   
        if(state_str == "run_right")
        {
            // do nothing
        }
        else
        {
             state_str = "run_right";
             
             with (pnts)
             {
                sprite_index = spr_pants_run_right;
             }
             with (jckt)
             {
                sprite_index = spr_jacket_run_right;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_run_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_run_right;
                        break;
             }
             
             image_index = 0;
             image_speed = 10/room_speed; 
        }
                 
    }
    if(left)
    {   
        if(state_str == "run_left")
        {
            // do nothing
        }
        else
        {
             state_str = "run_left";
             
             with (pnts)
             {
                sprite_index = spr_pants_run_left;
             }
             with (jckt)
             {
                sprite_index = spr_jacket_run_left;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_run_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_run_left;
                        break;
             }
             
             image_index = 0;
             image_speed = 10/room_speed; 
        }
                 
    }
    if(down && !right && !left)
    {
        if(state_str == "run_down")
        {
            // do nothing
        }
        else
        {
             state_str = "run_down";
             
             with (pnts)
             {
                sprite_index = spr_pants_run_down;
             }
             with (jckt)
             {
                sprite_index = spr_jacket_run_down;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_run_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_run_down;
                        break;
             }
             
             image_index = 0;
             image_speed = 10/room_speed; 
        }
    }
    if (up && !right && !left)
    {
        if(state_str == "run_up")
        {
            // do nothing
        }
        else
        {
             state_str = "run_up";
             
             with (pnts)
             {
                sprite_index = spr_pants_run_up;
             }
             with (jckt)
             {
                sprite_index = spr_jacket_run_up;
             }
             
             switch (fencer)
             {
                case "red":
                    sprite_index = spr_red_run_up;
                        break;
                case "blue":
                    sprite_index = spr_blue_run_up;
                        break;
             }
             
             image_index = 0;
             image_speed = 10/room_speed; 
        }
    } 
    
    move_no_solid();
}
