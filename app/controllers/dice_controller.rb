class DiceController < ApplicationController
 def roll
     @roll = rand(1..6)
     @time = Time.new
 end

end
