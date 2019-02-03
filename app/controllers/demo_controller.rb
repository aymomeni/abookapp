class DemoController < ApplicationController

  layout false

  def index
    #default -> render('index')
    render('hello')
  end

  def hello
    render('index') #sets the template (overwriting default)
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index') 
  end

end
