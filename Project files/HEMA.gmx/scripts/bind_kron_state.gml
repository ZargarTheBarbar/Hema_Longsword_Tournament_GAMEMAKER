///bind_kron_state()
state_str = "bind_kron";

if (!anim_start)
{
    image_index = 0;
    image_speed = 10/room_speed;
    anim_start = true;
    
    switch(dir)
    {
    case "right": 
         bind_x += 18;
         break;
        
    case "left":
         bind_x -= 18;
         break;
    
    case "down":
         bind_y += 18;
        break;
    
    case "up":
         bind_y -= 18;
        break;
    
    default:
        dir = "right";
    }
}

hspd = 0;
vspd = 0;

if(x < target.x + bind_x - 1)
{
    hspd = 1;
}
if(x > target.x + bind_x + 1)
{
    hspd = -1;
}
if(y < target.y + bind_y - 1)
{
    vspd = 1;
}
if(y > target.y + bind_y + 1)
{
    vspd = -1;
}

move(Solid);
