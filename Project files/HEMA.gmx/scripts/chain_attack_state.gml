///chain_attack_state()
state_str = "chain_attack";

var img_spd = 15/room_speed;
var dist_x = Player.x - target.x; 
var dist_y = Player.y - target.y;
var abs_dist_x = abs(dist_x);
var abs_dist_y = abs(dist_y);
var x_spd = -1;
var y_spd = -1;
attack = false;

// determine x and y speed
    
if (abs_dist_x >= 16)
{
    if(abs_dist_x >= 32)
    {
        var x_spd = 2;
    }
    else
    {
        var x_spd = 1;
    }
}
if (abs_dist_y >= 16)
{
   if(abs_dist_y >= 32)
    {
        var y_spd = 2;
    }
    else
    {
        var y_spd = 1;
    }
}

if (next_action == "mittelhau_b")
{
    attack_type = "mittelhau_b";
    next_action = "none";
    
    switch(dir)
    {
        case "right": 
                    
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_right_b;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_right_b;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_right_b;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_right_b;
                        break;
            }
            
            hspd = x_spd;
            vspd = y_spd;
            
            state = mittelhau_attack_state; 
                break;
        
        case "left":
            
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_left_b;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_left_b;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_left_b;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_left_b;
                        break;
            }
             
            hspd = -x_spd;
            vspd = -y_spd;
            
            state = mittelhau_attack_state; 
                break; 
        
        case "down": 
        
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_down_b;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_down_b;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_down_b;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_down_b;
                        break;
            }
             
            hspd = -x_spd;
            vspd = y_spd;
            
            state = mittelhau_attack_state; 
                break;    
                
        case "up":
        
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_up_b;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_up_b;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_up_b;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_up_b;
                        break;
            }
             
            hspd = x_spd;
            vspd = -y_spd;
            
            state = mittelhau_attack_state; 
                break;

        default:
            dir = "right";
    }        
}
else
{   
    attack_type = "mittelhau_a";
    next_action = "none";
    
    switch(dir)
    {
        case "right": 
                    
            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_right_a;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_right_a;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_right_a;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_right_a;
                        break;
            }
            
            hspd = x_spd;
            vspd = -y_spd;
            
            state = mittelhau_attack_state; 
                break;
        
        case "left":

            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_left_a;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_left_a;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_left_a;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_left_a;
                        break;
            }
             
            hspd = -x_spd;
            vspd = y_spd;
            
            state = mittelhau_attack_state; 
                break; 
        
        case "down": 

            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_down_a;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_down_a;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_down_a;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_down_a;
                        break;
            }
             
            hspd = x_spd;
            vspd = y_spd;
            
            state = mittelhau_attack_state; 
                break;    
                
        case "up":

            with (pnts)
            {
                sprite_index = spr_pants_mittelhau_up_a;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_mittelhau_up_a;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_mittelhau_up_a;
                        break;
                case "blue":
                    sprite_index = spr_blue_mittelhau_up_a;
            }
             
            hspd = -x_spd;
            vspd = -y_spd;
            
            state = mittelhau_attack_state; 
                break;

        default:
            dir = "right";
    }
}

image_index = 0;
image_speed = img_spd;

