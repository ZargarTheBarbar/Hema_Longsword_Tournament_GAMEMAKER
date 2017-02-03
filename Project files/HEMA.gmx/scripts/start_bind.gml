///start_bind()
anim_start = true;
attack = false;
block = false; 
counter = false;
cancel = false;

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
         
         bind_x = -38;
         bind_y = 0;
         with(target)
         {
            bind_x = 38;
            bind_y = 0;
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
         
         bind_x = 38;
         bind_y = 0;
         with(target)
         {
            bind_x = -38;
            bind_y = 0;
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
         
         bind_y = -32;
         bind_x = 0;
         with(target)
         {
            bind_y = 32;
            bind_x = 0;
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
         
         bind_y = 32;
         bind_x = 0;
         with(target)
         {
            bind_y = -32;
            bind_x = 0;
         }
         
        break;
    
    default:
        dir = "right";
}
image_index = 0;
image_speed = 10/room_speed;

// Choose bind type
var choosenum = random_range(1,100);

if (choosenum <= 33)
{
    state = bind_soft_state;
    script_execute(state);
    
    with(target)
    {
        state = bind_hard_state;
        script_execute(state);
    }
    
    Player.bind_sprite = instance_create(-64, -64, bind_hard);
}
else if (choosenum > 33 && choosenum < 66)
{
    state = bind_hard_state;
    script_execute(state);
    
    with(target)
    {
        state = bind_soft_state;
        script_execute(state);
    }
    
    Player.bind_sprite = instance_create(-64, -64, bind_soft);
}
else if (choosenum < 100)
{
    anim_start = false;
    
    Player.bind_sprite = instance_create(-64, -64, bind_grapple);

    state = bind_kron_state;
    script_execute(state);
    
    with(target)
    {
        state = bind_kron_state;
        script_execute(state);
    }
}

if(id == global.opponent_id)
{
    win_bind = false;
    lose_bind = false; 
    alarm[9] = bind_time;
}


