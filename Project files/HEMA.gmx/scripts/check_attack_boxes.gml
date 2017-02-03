///check_attack_boxes()

//determine which collision box to create based on the animation

var anim = sprite_get_name(jckt.sprite_index);

switch (anim)
{
    case "spr_jacket_oberhau_right":
        //right
        if (collision_rectangle( x+30-15, y-6-5, x+30, y-6+1, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_oberhau_left":
        //left
        if (collision_rectangle( x-30, y-6-5, x-30+15, y-6+1, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_oberhau_down":
        //down
        if (collision_rectangle( x, y+24-20, x+3, y+24, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_oberhau_up":
        //up
        if (collision_rectangle( x-4, y-36-1, x-1, y-36+16, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_thrust_high_right":
        //right
        if (collision_rectangle( x+30-15, y-6-5, x+30, y-6+1, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_thrust_high_left":
        //left
        if (collision_rectangle( x-30, y-6-5, x-30+15, y-6+1, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_thrust_high_down":
        //down
        if (collision_rectangle( x, y+24-20, x+3, y+24, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_thrust_high_up":
        //up
        if (collision_rectangle( x-4, y-36-1, x-1, y-36+16, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_right_a":
        //right up
        if (collision_line( x+24-7, y-11-6, x+24+7, y-11+7, target, false, true ) || collision_line( x+24+7, y-11+15, x+24-7, y-11+7, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_right_b":
        //right down
        if (collision_line( x+24-7, y-1-6, x+24+7, y-1+7, target, false, true ) || collision_line( x+24+7, y-1-15, x+24-7, y-1+7, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_left_a":
        //left down
        if (collision_line( x-24-7, y-1-6, x-24+7, y-1+6, target, false, true ) || collision_line( x-24+7, y-1-7, x-24-7, y-1+15, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_left_b":
        //left up
        if (collision_line( x-24-7, y-11-15, x-24+7, y-11+6, target, false, true ) || collision_line( x-24+7, y-11-6, x-24-7, y-11+6, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_down_a":
        //down right
        if (collision_line( x+5-7, y+18-14, x+5+13, y+18+8, target, false, true ) || collision_line( x+5+1, y+18-14, x+5-7, y+18+8, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_down_b":
        //down left
        if (collision_line( x-5-1, y+18-14, x-5+7, y+18+8, target, false, true ) || collision_line( x-5+7, y+18-14, x-5-13, y+18+8, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_up_a":
        //up left
        if (collision_line( x-5-13, y-30-7, x-5+7, y-30+7, target, false, true ) || collision_line( x-5+7, y-30-7, x-5+3, y-30+7, target, false, true ))
        {
            check_hit();
        }
            break;
    case "spr_jacket_mittelhau_up_b":
        //up right
        if (collision_line( x+5-7, y-30-7, x+5+3, y-30+7, target, false, true ) || collision_line( x+5+13, y-30-8, x+5-7, y-30+7, target, false, true ))
        {
            check_hit();
        }
            break;
}
