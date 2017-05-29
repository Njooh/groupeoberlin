class Admin::UsersController < ApplicationController
  before_filter :authorized
  def show
  end
  def messages
  	@messages = Contact.all
  end
  def comments
  	
  end
  def new_article
  	@blog = Blog.new
  end
  def create_article
  	@article = Blog.new(article_params)
  	@article.post_by = current_admin.name
  	if @article.save
  		#do redirect to show
  		flash[:notice] = "Article posted!"
  		redirect_to admin_Groupe_Oberlin_article_url(@article)
  	else
  		#tell the users of what errors he/she has
  		render 'new_article'
  	end
  end
  def article
  	@article = Blog.find_by(id: params[:id])
  end


  private
  	def article_params
  		params.require(:blog).permit(:article_title, 
  									:article_description,
  									:post_by, :category,
  									:image)
  	end
  	def authorized
  		unless current_admin 
  			redirect_to root_path
  		end
  	end
end
