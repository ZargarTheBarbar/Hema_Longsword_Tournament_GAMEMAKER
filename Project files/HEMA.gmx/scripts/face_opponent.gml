///face_opponent()

var xdif = x - target.x;
var ydif = y - target.y;

var xabs = abs(xdif);
var yabs = abs(ydif); 

if (xabs <= yabs)
{
    if (ydif >= 0)
    {
        dir = "up";
    }
    else
    {
        dir = "down";
    }
}
else
{
    if (xdif >= 0)
    {
        dir = "left";
    }
    else
    {
        dir = "right";
    }
}
    


