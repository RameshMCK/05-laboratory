require "httparty"

class StockController < ApplicationController

 def get_stock
 
    @symbol = params[:symbol]

    r = HTTParty.get("https://www.google.com/finance/getprices?q=#{@symbol}&x=NASD&i=120&p=15m&f=c&df=cpct").body
    @price = r.split("\n").last.to_f.round(2)

    render 'showstock'
 end
 
 
 end