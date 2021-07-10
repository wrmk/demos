class CommentsController < ApplicationController

  before_action :authenticate_user!, :only => [:create]

  def create

    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)
    redirect_to article_path(@article)

  end


  private

  def comment_params #метод чтобы указать какие параметры класс может вытянуть из формы
    params.require(:comment).permit(:author, :body)
  end

end
