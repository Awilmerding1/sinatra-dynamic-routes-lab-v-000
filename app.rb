require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do 
    @number = params[:number]
    @square = @number.to_i*@number.to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @phrase * @number.to_i 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word_one = params[:number]
    @phrase = params[:phrase]
    @number = params[:number]
    @phrase = params[:phrase]
    @number = params[:number]
    @phrase = params[:phrase]
  end

end