///show_feint_word()
var img_number = 0;

var word = instance_create(x,y-28,Word_Small);
var parent = id;
feint_attack = true;
                    
with (word)
{
    image_index = img_number; 
    image_speed = 0;
    attached = parent;
}
