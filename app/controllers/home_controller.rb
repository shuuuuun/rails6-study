class HomeController < ApplicationController
  def top
    render plain: 'hello world!'
  end
end
