/// attack_style_two_ober()

var img_spd = 15/room_speed;
var dist_x = Player.x - target.x; 
var dist_y = Player.y - target.y;
var abs_dist_x = abs(dist_x);
var abs_dist_y = abs(dist_y);
var x_spd = -1;
var y_spd = -1;
attack = false;
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
move(Solid);

        
