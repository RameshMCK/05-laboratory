class TimeController < ApplicationController
 def gettime
     @time = Time.new
     binding.pry
 end

end
