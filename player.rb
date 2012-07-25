class Player
  def initialize
    @health = 20
    @drctn = :forward 
  end
##################
  def play_turn(warrior)
  p @drctn
   chckhlth(warrior)
    if !pvt?(warrior)
      if !cptv(warrior)
        if !bttl(warrior)
            nxt(warrior)
        end
      end
    end
  end
####################
  def pvt?(warrior)
    if 
      warrior.feel.wall?
      warrior.pivot!(:backward)
    else
      false
    end
  end
#####################
  def cptv(warrior)
    if 
      warrior.feel(:forward).captive?
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
        warrior.rest!
      else
        warrior.walk!(:forward)
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
      warrior.walk!(:forward)
    end
  end
####################
  def bttl(warrior)
      if 
        warrior.feel(:forward).enemy?
      else
        warrior.shoot!(:forward)
      end
  end
####################
  def lok(warrior)
   if 
    warrior.look
   #variables
   end 
  end
###################
  def sht(warrior)
   if 
    warrior.shoot!(:forward)
    #variables
   end
  end
##################
end