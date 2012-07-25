class Player
    
    ##################
    
    def play_turn(warrior)
        chckhlth(warrior)
        if !cptv(warrior)
            if !bttl(warrior)
                if !nxt(warrior)
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
    
    def fnlz(warrior)
        if 
            warrior.health < 20
            warrior.walk!
            elsif 
            warrior.health < 20
            warrior.rest!  
            else
            false  
        end
    end
    
    ####################
    
    def nxt(warrior)
        if 
            @health < 20
            warrior.shoot!
            else
            false
            warrior.walk!
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
                warrior.health < 9
                warrior.walk!
                elsif 
                warrior.health < 9
                warrior.rest!
                else
                true
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
    
    ##########
end