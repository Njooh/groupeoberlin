class WelcomeController < ApplicationController
  def index
  	@articles = Blog.all
  end
end
