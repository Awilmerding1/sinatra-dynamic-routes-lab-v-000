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
    @word_one = params[:word_one]
    @word_two = params[:word_two]
    @word_three = params[:word_three]
    @word_four = params[:word_four]
    @word_five = params[:word_five]
    "#{@word_one @word_two @word_three @word_four @word_five}"
  end

end