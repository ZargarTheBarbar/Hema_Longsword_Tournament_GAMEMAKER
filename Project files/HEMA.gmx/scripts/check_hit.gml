///check_hit()
var block_bonus = 2;
var attack_bonus = 0;

if (target == Opponent || target == Player)
{
    // Check to see outcome of hit
    
    var target_reverse_dir = false;
    
    switch(target.dir)
    {
        case "right":
            var target_reverse_dir = "left";   
                break;
        
        case "left":
            var target_reverse_dir = "right";
                break;
                
        case "down":
            var target_reverse_dir = "up";
                break;
                
        case "up":
            var target_reverse_dir = "down";
                break;
    
    }
    
    if(dir == target_reverse_dir)
    {
        switch (target.state_str)
        {
            case "pflug_move":
                target.state = block_state;
                
                if(attack_type == "oberhau")
                {
                    with(target)
                    {
                        block_points -= 2+block_damage;
                        block_bar_check(block_bonus);
                    }
                    
                    anim_start = false;
                    state = blocked_state;
                    script_execute(state); 
                }
                if(attack_type == "mittelhau_a" || attack_type == "mittelhau_b")
                { 
                    var stunned = false;
                    with(target)
                    {
                        if(other.feint_attack)
                        {
                            if(opponent_feint)
                            {
                                block_points -= 4+block_damage;
                                block_bar_check(block_bonus);
                            }
                            else
                            {
                                block_points -= 1;
                                anim_start = false;
                                state = block_state;
                                focus_points += block_bonus;
                                
                                if (block_points > 0)
                                {
                                    if(id == global.player_id)
                                    {
                                        show_focus_bonus(block_bonus);
                                    }
                                    var stunned = true;
                                }
                            }
                        }
                        else
                        {
                            block_points -= 1+block_damage;
                            block_bar_check(block_bonus);
                        }
                    }
                    if(stunned)
                    {
                        block_points = 0;
                        anim_start = false;
                        state = stun_state;
                        script_execute(state);
                    }
                }
                if(attack_type == "thrust")
                {
                    with(target)
                    {
                        anim_start = false;
                        block_points -= 1+block_damage;
                        block_bar_check(block_bonus);
                        
                    }
                }
                    break;
                    
            case "block":
                target.state = block_state;
                
                if(attack_type == "oberhau")
                {
                    with(target)
                    {
                        anim_start = false;
                        block_points -= 2+block_damage;
                        block_bar_check(block_bonus);
                        
                    }
                    
                    state = blocked_state;
                    script_execute(state); 
                }
                if(attack_type == "mittelhau_a" || attack_type == "mittelhau_b")
                { 
                    with(target)
                    {
                        if(other.feint_attack && opponent_feint)
                        {
                            block_points -= 4+block_damage;
                            block_bar_check(block_bonus);
                        }
                        else
                        {
                            block_points -= 1+block_damage;
                            block_bar_check(block_bonus);
                        }
                    }
                }
                if(attack_type == "thrust")
                {
                    with(target)
                    {
                        anim_start = false;
                        block_points -= 1+block_damage;
                        block_bar_check(block_bonus);
                        
                    }
                }
                    break;
                    
            case "change_to_block":
                var stunned = false;
                
                with(target)
                {
                    if(block_points >= 1 && timed_parry)
                    {
                        var stunned = true;
                        
                        block_points -= 1;
                        anim_start = false;
                        state = block_state;
                        focus_points += block_bonus;
                        
                        if(id == global.player_id)
                        {
                            show_focus_bonus(block_bonus);
                        }
                    }
                    else if(other.feint_attack && !opponent_feint)
                    {
                        var stunned = true;
                        
                        block_points -= 1;
                        anim_start = false;
                        state = block_state;
                        focus_points += block_bonus;
                        
                        if(id == global.player_id)
                        {
                            show_focus_bonus(block_bonus);
                        }
                    }
                    else
                    {
                        anim_start = false;
                        block_points -= 1+block_damage;
                        block_bar_check(block_bonus);
                    }
                }
                
                if(stunned)
                {
                    block_points = 0;
                    anim_start = false;
                    state = stun_state;
                    script_execute(state);
                }
                else
                {
                    if(attack_type == "oberhau")
                    {
                        anim_start = false;
                        state = blocked_state;
                        script_execute(state); 
                    }
                    else if(attack_type == "thrust" || attack_type == "mitelhau_a" || attack_type == "mitelhau_b")
                    {
                        play_clash_sound();
                    }
                }
                    break;
                    
            case "change_from_block":
            
                with(target)
                {
                    anim_start = false;
                    state = damage_state;
                    script_execute(state);
                }
                
                // Add to score
                if(id == global.player_id)
                {
                    // needs to be done
                }
                
                    break;
                    
            case "oberhau_attack":
                if(target.image_index <= 3)
                {
                    if(attack_type == "oberhau")
                    {
                        if(target.cancel)
                        {
                            if(target.block_points >= 3)
                            {
                                //block
                                anim_start = false;
                                state = blocked_state;
                                script_execute(state); 
                                
                                with(target)
                                {
                                    state = block_state;
                                    anim_start = false;
                                    block_points -= 2+block_damage;
                                    block_bar_check(block_bonus);
                                    cancel = false;
                                }
                            }
                            else
                            {
                                with(target)
                                {
                                    anim_start = false;
                                    state = damage_state;
                                    script_execute(state);
                                }
                
                                // Add to score
                                if(id == global.player_id)
                                {
                                    // needs to be done
                                } 
                            }
                        }
                        else if(Player.allow_bind)
                        {
                            start_bind();
                            
                            with(target)
                            {
                                receive_bind();
                            }
                        }
                        else
                        {
                            // no bind
                            anim_start = false;
                            state = blocked_state;
                            script_execute(state); 
                            
                            with(target)
                            {
                                state = block_state;
                                anim_start = false;
                                block_points -= 1+block_damage;
                                block_bar_check(block_bonus);
                            }
                        }
                    }
                    if(attack_type == "thrust")
                    {
                        if (cancel)
                        {
                            if(target.block_points >= 3)
                            {
                                //block
                                anim_start = false;
                                state = blocked_state;
                                script_execute(state); 
                                
                                with(target)
                                {
                                    state = block_state;
                                    anim_start = false;
                                    block_points -= 2+block_damage;
                                    block_bar_check(block_bonus);
                                    cancel = false;
                                }
                            }
                            else
                            {
                                with(target)
                                {
                                    anim_start = false;
                                    state = damage_state;
                                    script_execute(state);
                                }
                
                                // Add to score
                                if(id == global.player_id)
                                {
                                    // needs to be done
                                } 
                            }
                        }
                        else if(block_points >= 1)
                        {
                            if(Player.allow_bind)
                            {
                                // bind
                            }
                            else
                            {
                                // no bind
                                anim_start = false;
                                state = blocked_state;
                                script_execute(state); 
                                
                                with(target)
                                {
                                    state = block_state;
                                    anim_start = false;
                                    block_points -= 1+block_damage;
                                    block_bar_check(block_bonus);
                                }
                            }
                        }
                        else
                        {   
                            // failed bind
                            target.focus_points += 2;
                            if(target.id == global.player_id)
                            {
                                with(target)
                                {
                                    show_focus_bonus(2);
                                }
                            }
                            
                            block_points = 0;
                            anim_start = false;
                            state = stun_state;
                            script_execute(state);
                        }
                    }
                }
                else
                {
                    if(target.block)
                    {
                        if(attack_type == "oberhau")
                        {
                            with(target)
                            {
                                anim_start = false;
                                block_points -= 2+block_damage;
                                block_bar_check(block_bonus);
                                
                            }
                            
                            state = blocked_state;
                            script_execute(state); 
                        }
                        if(attack_type == "mittelhau_a")
                        {
                            with(target)
                            {
                                anim_start = false;
                                block_points -= 1+block_damage;
                                block_bar_check(block_bonus);
                                
                            }
                        }
                        if(attack_type == "mittelhau_b")
                        {
                            with(target)
                            {
                                anim_start = false;
                                block_points -= 1+block_damage;
                                block_bar_check(block_bonus);
                                
                            }
                        }
                        if(attack_type == "thrust")
                        {
                            with(target)
                            {
                                anim_start = false;
                                block_points -= 1+block_damage;
                                block_bar_check(block_bonus);
                                
                            }
                        }
                    }
                    else
                    {
                        with(target)
                        {
                            anim_start = false;
                            state = damage_state;
                            script_execute(state);
                        }
                
                        // Add to score
                        if(id == global.player_id)
                        {
                            // needs to be done
                        }
                    }
                }
                    break;
                    
            case "mittelhau_attack":
                if(target.image_index <= 3)
                {
                    if(double_hit)
                    {
                        double_hit = false;
                        anim_start = false;
                        state = damage_state;
                        script_execute(state);
                        
                        with (target)
                        {
                            anim_start = false;
                            state = damage_state;
                            script_execute(state);
                        }
                    }
                    else if(attack_type == "mittelhau_a" || attack_type == "mittelhau_b" || attack_type == "thrust")
                    {
                        // double hit
                        with(target)
                        {
                            double_hit = true;
                        }
                    }
                    else
                    {
                        anim_start = false;
                        state = damage_state;
                        script_execute(state);
                    }
                }
                else
                {
                    with(target)
                    {
                        anim_start = false;
                        state = damage_state;
                        script_execute(state);
                    }
                
                    // Add to score
                    if(id == global.player_id)
                    {
                        // needs to be done
                    }
                }
                    break;
                    
            case "thrust_attack":
                if(target.image_index <= 3)
                {
                    if(attack_type == "oberhau")
                    {
                        var damage = false;
                        
                        with(target)
                        {
                            if (focus_points >= 6 && absetzen)
                            {
                                // absetzen
                                var damage = true;
                                focus_points -= 6;
                                
                                // Add to score
                                if(id == global.player_id)
                                {
                                    // needs to be done
                                }
                            }
                            else if(block_points >= 1)
                            {
                                if(Player.allow_bind)
                                {
                                    // bind
                                }
                                else
                                {
                                    // no bind
                                    anim_start = false;
                                    state = blocked_state;
                                    script_execute(state); 
                                    
                                    with(target)
                                    {
                                        state = block_state;
                                        anim_start = false;
                                        block_points -= 1+block_damage;
                                        block_bar_check(block_bonus);
                                    }
                                }
                            }
                            else
                            {   
                                block_points = 0;
                                anim_start = false;
                                state = stun_state;
                                script_execute(state);
                            }
                        }
                        
                        if(damage)
                        {
                            anim_start = false;
                            state = damage_state;
                            script_execute(state);
                        }
                        else
                        {
                            if(Player.allow_bind)
                            {
                                // bind
                            }
                            else
                            {
                                // no bind
                                anim_start = false;
                                state = blocked_state;
                                script_execute(state); 
                                
                                with(target)
                                {
                                    state = block_state;
                                    anim_start = false;
                                    block_points -= 1+block_damage;
                                    block_bar_check(block_bonus);
                                }
                            }
                        }
                    }
                    if(attack_type == "thrust")
                    {
                        // double hit
                        with(target)
                        {
                            double_hit = true;
                        }
                        if(double_hit)
                        {
                            double_hit = false;
                            anim_start = false;
                            state = damage_state;
                            script_execute(state);
                            
                            with (target)
                            {
                                anim_start = false;
                                state = damage_state;
                                script_execute(state);
                            }
                        }
                    }
                    else
                    {
                        with (target)
                        {
                            anim_start = false;
                            state = damage_state;
                            script_execute(state);
                        }
                        
                        // Add to score
                        if(id == global.player_id)
                        {
                            // needs to be done
                        }
                    }
                }
                else
                {
                    with (target)
                    {
                        anim_start = false;
                        state = damage_state;
                        script_execute(state);
                    }
                    
                    // Add to score
                    if(id == global.player_id)
                    {
                        // needs to be done
                    }
                }
                    break;
                    
            case "hangen_guard":
                if(target.image_index < 11)
                {
                    if(attack_type == "oberhau")
                    {
                        with(target)
                        {
                            if(focus_points >= 4)
                            {
                                focus_points -= 4;
                                anim_start = false;
                                state = hangen_attack_state;
                                script_execute(state); 
                            }
                            else
                            {
                                focus_points = 0;
                                anim_start = false;
                                state = hangen_block_state; 
                                block_points -= 2+block_damage;
                                block_bar_check(block_bonus);
                            }
                        }
                        
                        state = blocked_state;
                        script_execute(state); 
                    }
                    if(attack_type == "mittelhau_a")
                    {
                        with(target)
                        {
                            anim_start = false;
                            state = hangen_block_state;
                            script_execute(state); 
                            block_points -= 2+block_damage;
                            block_bar_check(block_bonus);
                        }
                    }
                    if(attack_type == "mittelhau_b")
                    {
                        with(target)
                        {
                            anim_start = false;
                            state = damage_state;
                            script_execute(state);
                        }
                        focus_points += attack_bonus;
                        
                        // Add to score
                        if(id == global.player_id)
                        {
                            // needs to be done
                        }
                    }
                    if(attack_type == "thrust")
                    {
                        with(target)
                        {
                            if(focus_points >= 4)
                            {
                                focus_points -= 4;
                                anim_start = false;
                                state = hangen_attack_state;
                                script_execute(state); 
                            }
                            else
                            {
                                focus_points = 0;
                                anim_start = false;
                                state = hangen_block_state; 
                                block_points -= 2+block_damage;
                                block_bar_check(block_bonus);
                            }
                        }
                    }
                }
                else
                {
                    with(target)
                    {
                        anim_start = false;
                        state = damage_state;
                        script_execute(state);
                    }
                    focus_points += attack_bonus;
                    
                    // Add to score
                    if(id == global.player_id)
                    {
                        // needs to be done
                    }     
                }
                    break;
                    
             case "blocked":
                if (target.block)
                {
                    state = blocked_state;
                    script_execute(state); 
                    
                    with(target)
                    {
                        state = block_state;
                        anim_start = false;
                        block_points -= 2+block_damage;
                        block_bar_check(block_bonus);
                    }
                }
                else
                {
                    with(target)
                    {
                        anim_start = false;
                        state = damage_state;
                        script_execute(state);
                    }
                    
                    focus_points += attack_bonus;
                        
                    // Add to score
                    if(id == global.player_id)
                    {
                        // needs to be done
                    } 
                }
                    break;
                       
             case "counter":  
                block_points = 0;
                anim_start = false;
                state = stun_state;
                script_execute(state);
                
                play_clash_sound();
                
                with(target)
                {
                    if(id == global.player_id)
                    {
                        show_focus_bonus(block_bonus);
                    }
                }
                    break;
                    
            default:
            
                with(target)
                {
                    anim_start = false;
                    state = damage_state;
                    script_execute(state);
                }
                
                focus_points += attack_bonus;
                    
                // Add to score
                if(id == global.player_id)
                {
                    // needs to be done
                }     
        }      
    }
    else
    {
        with(target)
        {
            anim_start = false;
            state = damage_state;
            script_execute(state);
        }
        
        focus_points += attack_bonus;
                    
        // Add to score
        if(id == global.player_id)
        {
            // needs to be done
        }
    }     
}
else if (target == Tatami)
{
    target.hit = true;
}

