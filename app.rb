require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
     cool = @name.reverse
       "#{cool}"
 end
  get "/square/:number" do
    @number = params[:number].to_i
      "#{@number * @number}"

 end

 get "/say/:number/:phrase" do
 @number = params[:number].to_i
 @phrase = params[:phrase].to_s
  "#{@phrase * @number}"
end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1].to_s
    @w2 = params[:word2].to_s
    @w3 = params[:word3].to_s
    @w4 = params[:word4].to_s
    @w5 = params[:word5].to_s
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i

 if params[:operation] == "add"
  "#{@num1 + @num2}"
elsif params[:operation] == "subtract"
   "#{@num2 - @num1}"
 elsif params[:operation] == "multiply"
    "#{@num1 * @num2}"
  elsif params[:operation] == "divide"
     "#{@num1 / @num2}"
   else
     "nothing"
   end
end
end
