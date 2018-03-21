class MathController < ApplicationController
 def root
     @input = params[:x].to_i 
     @sqrt = @input **  0.5
 end


 def showadd
 
 end
 
 def computeadd
  @x = params[:x].to_f
  @y = params[:y].to_f
  @sum = @x + @y
  render 'showadd'
  
 end
 
 
 def get_ransum
   render 'ransum'
 end
 
 def post_ransum
  count = params[:count].to_i
  start, stop = params[:range].split(',').map{|x| x.to_i} # storing the array value to forst and secod variable

  @numbers = count.times.map{rand(start..stop)} # stores in an array
  @sum = @numbers.sum
  #binding.pry #dubugging
  
  
  render 'ransum' # to show the same HTML
 end
 
 def get_dups
  
   render 'dupcount'
 end
 
 def post_dups

  duplist= params[:duplist].split(',').map{|x| x.to_i} # storing the array value to forst and secod variable
  uniqnumber = duplist.uniq #get the unique list
  
  i = 0
  
  @a=[]
  # while i < uniqnumber.size do
  #    @d = uniqnumber.detect{ |e| duplist.count(e) }
  #    #binding.pry #dubugging
  #    @a << uniqnumber[i]  #+ '-' + @d
  #    #@a << @d
  #    i +=1
  # end
  
     # sample array
   
   
   # make the hash default to 0 so that += will work correctly
   unihash = Hash.new(0)
   
   # iterate over the array, counting duplicate entries
   duplist.each do |v|
     unihash[v] += 1
   end
   
   unihash.each do |k, v|
     res = "#{k} appears #{v} times"
     @a << res
     
   end

  
  
  
  
  #@numbers = count.times.map{rand(start..stop)} # stores in an array
  #@sum = @numbers.sum
  
  
  render 'dupcount'
  
 end
 
 
 
end
