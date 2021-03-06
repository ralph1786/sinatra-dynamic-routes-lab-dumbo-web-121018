require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name]
    @reversed_name = @name.reverse
    "#{@reversed_name}"
  end

  get "/square/:number" do 
    @number = params[:number].to_i
    @squared_number = @number ** 2
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @num_phrase = ""
    @number.times do 
      @num_phrase += "#{@phrase}\n"
    end
    @num_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do 
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      result = number1 + number2
    elsif operation == "subtract"
      result = number1 - number2
    elsif operation == "multiply"
      result = number1 * number2
    elsif operation == "divide"
      result = number1 / number2
    else
      result = "No such operation available"
    end
    result.to_s
  end

end