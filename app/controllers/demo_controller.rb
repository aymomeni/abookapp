class DemoController < ApplicationController

  layout false

  def index
    #default -> render('index')
    render('hello')
  end

  def hello
    render('index') #sets the templatee
  end

end
