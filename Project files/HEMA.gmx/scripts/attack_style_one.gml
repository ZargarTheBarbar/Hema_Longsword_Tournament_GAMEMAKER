/// attack_style_one()

var dist_x = x - target.x; 
var dist_y = y - target.y;
var abs_dist_x = abs(dist_x);
var abs_dist_y = abs(dist_y);
var x_spd = -1;
var y_spd = -1;
var mittelhau = false;

var img_spd = 15/room_speed; 

if(cancel)
{
    var img_spd = 10/room_speed; 
}

attack = false;

// check movement to determine ober or mittel

if (right)
{
    if (down || up)
    {
        if(!cancel)
        {
            var mittelhau = true;
        }
    }
}
if (left)
{
    if (down || up)
    {
        if(!cancel)
        {
            var mittelhau = true;
        }
    }
}
if (mittelhau)
{
    var x_spd = 1;
    var y_spd = 1;
    
    switch(dir)
    {
        case "right": 
            if (down)
            {
                attack_type = "mittelhau_a";
                
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
                vspd = y_spd;
                
                state = mittelhau_attack_state;
                    break; 
            }
            else
            {
                attack_type = "mittelhau_b";
                
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
                vspd = -y_spd;
                
                state = mittelhau_attack_state; 
                    break;
            } 
        
        case "left":
            if (up)
            {
                attack_type = "mittelhau_a";
                
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
                vspd = -y_spd;
                
                state = mittelhau_attack_state;
                    break; 
            }
            else
            {
                attack_type = "mittelhau_b";
                
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
                vspd = y_spd;
                
                state = mittelhau_attack_state; 
                    break;
            } 
        
        case "down": 
            if (left)
            {
                attack_type = "mittelhau_a";
                
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
                
                hspd = -x_spd;
                vspd = y_spd;
                
                state = mittelhau_attack_state;
                    break; 
            }
            else
            {
                attack_type = "mittelhau_b";
                
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
                 
                hspd = x_spd;
                vspd = y_spd;
                
                state = mittelhau_attack_state; 
                    break;
            }    
                
        case "up":
            if (right)
            {
                attack_type = "mittelhau_a";
                
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
                            break;
                }
                
                hspd = x_spd;
                vspd = -y_spd;
                
                state = mittelhau_attack_state;
                    break; 
            }
            else
            {
                attack_type = "mittelhau_b";
                
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
                 
                hspd = -x_spd;
                vspd = -y_spd;
                
                state = mittelhau_attack_state; 
                    break;
            }
        
        default:
            dir = "right";
    }
    
    image_index = 0;
    image_speed = img_spd;   
        
}
else
{
    attack_type = "oberhau";
    
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
    
    switch(dir)
    {
        case "right": 
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_right;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_oberhau_right;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_oberhau_right;
                        break;
                case "blue":
                    sprite_index = spr_blue_oberhau_right;
                        break;
            }
                     
            hspd = x_spd;
            vspd = 0;
            
            break;
                    
        case "left":
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_left;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_oberhau_left;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_oberhau_left;
                        break;
                case "blue":
                    sprite_index = spr_blue_oberhau_left;
                        break;
            }
            
            hspd = -x_spd;
            vspd = 0;
            
            break;
                
        case "down":
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_down;
            }
            with (jckt)
            {
                sprite_index = spr_jacket_oberhau_down;
            }
            switch (fencer)
            {
                case "red":
                    sprite_index = spr_red_oberhau_down;
                        break;
                case "blue":
                    sprite_index = spr_blue_oberhau_down;
                        break;
            }
            
            hspd = 0;
            vspd = y_spd;
            
            break;
                
        case "up":
            with (pnts)
            {
                sprite_index = spr_pants_oberhau_up;
                }
                with (jckt)
                {
                    sprite_index = spr_jacket_oberhau_up;
                }
                switch (fencer)
                {
                    case "red":
                        sprite_index = spr_red_oberhau_up;
                            break;
                    case "blue":
                        sprite_index = spr_blue_oberhau_up;
                            break;
                }
                
                hspd = 0;
                vspd = -y_spd;
                
                break;
                
        default:
            dir = "right";
    }
    image_index = 0;
    image_speed = img_spd;
    
    state = oberhau_attack_state;
}

move(Solid);

        
