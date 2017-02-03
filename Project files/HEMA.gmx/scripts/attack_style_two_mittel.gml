/// attack_style_two_mittel()

var img_spd = 15/room_speed;
var dist_x = Player.x - target.x; 
var dist_y = Player.y - target.y;
var abs_dist_x = abs(dist_x);
var abs_dist_y = abs(dist_y);
var x_spd = 1;
var y_spd = 1;
cancel = false;
attack_type = "mittelhau_a";

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
        sprite_index = spr_red_mittelhau_right_a;
        
        hspd = x_spd;
        vspd = y_spd;
        
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
        sprite_index = spr_red_mittelhau_left_a;
        
        hspd = -x_spd;
        vspd = -y_spd;
        
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
        sprite_index = spr_red_mittelhau_down_a;
        
        hspd = -x_spd;
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
        sprite_index = spr_red_mittelhau_up_a;
        
        hspd = x_spd;
        vspd = -y_spd;
        
        state = mittelhau_attack_state;
            break; 
    
    default:
        dir = "right";
}

image_index = 0;
image_speed = img_spd;   
        

move(Solid);

        
