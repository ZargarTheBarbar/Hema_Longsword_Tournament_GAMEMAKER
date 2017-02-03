///walk_state()
state_str = "walk";

// Move the player

if (!right && !left)
{
    hspd = 0;
}

if (!up && !down)
{
    vspd = 0;
}

if (right)
{
    hspd = walkspd; 
    
    if (down)
    {
        vspd = walkspd;
    }
    else if (up)
    {
        vspd = -walkspd;
    }
}
else if (left)
{
    hspd = -walkspd;
    
     if (down)
    {
        vspd = walkspd;
    }
    else if (up)
    {
        vspd = -walkspd;
    }
}
else if (down)
{
    vspd = walkspd;
}
else if (up)
{
    vspd = -walkspd;
}

move(Solid);

// Set animation

if (hspd == 0 && vspd == 0)
{
    image_speed = 0;
    image_index = 2;
    stand = true;
}
else if(hspd > 0)
{
    with (pnts)
    {
        sprite_index = spr_pants_walk_right;
    }
    with (jckt)
    {
        sprite_index = spr_jacket_walk_right;
    }
    if (stand)
    {
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_right;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_right;
                    break;
        }

        image_speed = .2; 
        image_index = 0;
        stand = false;
    }
    else
    { 
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_right;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_right;
                    break;
        }
        
        image_speed = .2;
    }
}
else if(hspd < 0)
{
    with (pnts)
    {
        sprite_index = spr_pants_walk_left;
    }
    with (jckt)
    {
        sprite_index = spr_jacket_walk_left;
    }
    if (stand)
    {
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_left;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_left;
                    break;
        }
        
        image_speed = .2; 
        image_index = 0;
        stand = false;
    }
    else
    {
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_left;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_left;
                    break;
        }
        
        image_speed = .2; 
    }
}
else if(vspd > 0)
{
    with (pnts)
    {
        sprite_index = spr_pants_walk_down;
    }
    with (jckt)
    {
        sprite_index = spr_jacket_walk_down;
    }   
    if (stand)
    {
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_down;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_down;
                    break;
        }
        
        image_speed = .2; 
        image_index = 0;
        stand = false;
    }
    else
    {
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_down;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_down;
                    break;
        }
        
        image_speed = .2; 
    }
}
else if(vspd < 0)
{
    with (pnts)
    {
        sprite_index = spr_pants_walk_up;
    }
    with (jckt)
    {
        sprite_index = spr_jacket_walk_up;
    }
    if (stand)
    {
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_up;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_up;
                    break;
        }
        
        image_speed = .2; 
        image_index = 0;
        stand = false;
    }
    else
    {
        switch (fencer)
        {
            case "red":
                sprite_index = spr_red_walk_up;
                    break;
            case "blue":
                sprite_index = spr_blue_walk_up;
                    break;
        }
        
        image_speed = .2; 
    }
}


