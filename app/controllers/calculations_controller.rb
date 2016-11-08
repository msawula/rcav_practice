class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def squaring
    @number = params[:side_length]
    @squarednumber = @number.to_i * @number.to_i
    render("show_square.html.erb")
  end

  def square_root
    @number = params[:value]
    @sqrtroot = Math.sqrt(@number.to_i)
    render("show_squareroot.html.erb")
  end

def random
@lowernumber = params[:lower]
@uppernumber = params[:upper]

@selection = rand(@lowernumber.to_i..@uppernumber.to_i)
render("show_random.html.erb")
end

def payment

@term = params[:years]
@amount = params[:loanamount]
@intrate = ((params[:interestrate]).to_f)/100

@numerator = @amount.to_i * (((params[:interestrate]).to_f)/120000)

@denominator = 1- ((1 + (params[:interestrate].to_f/120000)) ** (@term.to_i * 12 * -1))

@monthlypayment =@numerator.to_f / @denominator.to_f

render("show_payment.html.erb")

end


end
