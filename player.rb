class Player
    def initialize
        @health = 20
        @drctn = :forward 
    end
    ##################
    def play_turn(warrior)
        p @drctn
        chckhlth(warrior)
        if !cptv(warrior)
            if !bttl(warrior)
                nxt(warrior)
                
                
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
            @dmg
            if 
                @health < 12
                rtrt(warrior)
                else
                warrior.walk!(:forward)
            end
            else
            if 
                @health < 20
                warrior.shoot!
                elsif
                false
                else
                if !empty?(warrior)
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
            @dmg = true
            else
            @dmg = false
        end
        @health = hlth
    end
    ####################
    def rtrt(warrior)
        if :forward == :forward
            warrior.walk!(:backward)
            else
            warrior.walk!(:backward)
        end
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
            warrior.walk!  
            else
            false  
        end
    end
    ##########
end