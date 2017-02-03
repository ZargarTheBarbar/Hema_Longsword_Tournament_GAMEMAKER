///show_focus_bonus()
var focus_bonus = argument[0];
var img_number = 0;

switch (focus_bonus)
{
    case 1:
        var img_number = 2;
            break;
            
    case 2:
        var img_number = 3;
            break;
            
    case 3:
        var img_number = 4;
            break;
}

var word = instance_create(x,y-28,Word_Small);
var parent = id;
                    

with (word)
{
    image_index = img_number; 
    image_speed = 0;
    attached = parent;
}
