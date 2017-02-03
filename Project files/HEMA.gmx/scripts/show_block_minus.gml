///show_block_minus()
var block_damage = argument[0];
var img_number = 0;

switch (block_damage)
{
    case 1:
        var img_number = 5;
            break;
            
    case 2:
        var img_number = 6;
            break;
            
    case 3:
        var img_number = 7;
            break;
}

var word = instance_create(x,y-24,Word_Small);
var parent = id;
                    

with (word)
{
    image_index = img_number; 
    image_speed = 0;
    attached = parent;
}
