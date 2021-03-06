class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v2/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ['BTC', 'XRP', 'ADA', 'XLM', 'STEEM']
  end

  def about
  end

  def lookup
    @symbol = params[:sym]
    @symbol = @symbol.upcase if @symbol
  end

end
