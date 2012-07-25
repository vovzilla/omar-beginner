class Player
    
    ##################
    def play_turn(warrior)
        chckhlth(warrior)
        if !cptv(warrior)
            if !bttl(warrior)
                if !nxt(warrior)
                    !chckhlth(warrior)
                end
            end
        end
    end
    #####################
    def cptv(warrior)
        if 
            warrior.feel.captive?
            warrior.rescue!(:forward)
            else
            false
        end
    end
    ####################
    def nxt(warrior)
        
        if 
            @health < 14
            else
            true
        end
        else
        if 
            @health < 20
            warrior.shoot!
            elsif
            false
            else
            if warrior.walk!
                else
                if 
                    warrior.feel.empty?
                    warrior.walk!
                    else
                    false
                end
            end
        end
    end
    ####################
    def chckhlth(warrior)
        hlth = warrior.health
        if 
            hlth == 20
            @health = 20
        end
        if 
            hlth < @health
            else
            if 
                warrior.feel.empty?
                else 
                if !empty?(warrior)
                    else
                    false
                end
            end
        end
        @health = hlth
    end
    ####################
    def bttl(warrior)
        if 
            warrior.feel(:forward).enemy?
            warrior.shoot!(:forward)
            else
            false
        end
    end
    ####################
    def empty?(warrior)
        if 
            warrior.feel.empty?
            elsif 
            warrior.look  
            else
            false  
        end
    end
    ##########
end