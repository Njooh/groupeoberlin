class NewsController < ApplicationController
	before_action :set_article, only: [:show, :comment]
  def index
  	@articles = Blog.order("created_at DESC").paginate(page: params[:page], per_page: 9)
  	#@comments = @articles.comments
  end

  def show
  	@comments = @article.comments.all
  	@comment = Comment.new
  end

  def comment
  	@comment = @article.comments.new(set_params)
  	if @comment.save
  		flash[:notice] = "Comment posted!"
  		redirect_to :back
  	else
		render 'show'	
  	end
  end

  private
  def set_params
  	params.require(:comment).permit(:commenter_name, :email,
  									:web_address, :comment_message)
  end
  def set_article
  	@article = Blog.find_by(id: params[:id])
  end

end
