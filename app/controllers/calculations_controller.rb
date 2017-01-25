class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    #Parameters: {"num"=>"345"}
    x = params["num"].to_i
    @val = x
    @sval = x*x
    render("square.html.erb")
  end

  def square_root
    x = params["num"].to_i
    @val = x
    @sval = Math.sqrt(x)
    render("square_root.html.erb")
  end

  def square_root_form
    x = params["num"].to_i
    @val = x
    @sval = Math.sqrt(x)
    render("square_root_form.html.erb")
  end

  def random
    @min = params["min"].to_i
    @max = params["max"].to_i
    @rand = @min + rand(@max-@min)
    render("random.html.erb")
  end

  def payment
    @rate = (params["rate"].to_i)/100.0
    @years = params["years"].to_i
    @loan = params["loan"].to_i
    months = @years*12
    rate = @rate/1200.0
    @monthly_payment = (@loan * (rate + (rate / ((1+rate) ** months - 1)))).round(2)
    render("payment.html.erb")
  end
end
