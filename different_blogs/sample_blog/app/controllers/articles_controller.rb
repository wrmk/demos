class ArticlesController < ApplicationController

  before_action :authenticate_user!, :only => [:new, :create, :edit,:destroy] #создание формы авторизации на /articles к указанным вложенностям
 
  def index
    @articles = Article.all
  end

  def show
      @article = Article.find(params[:id])
  end

  def new
  end


  def create

    # render - функция возвращает страницу
    # plain: params[:article].inspect - параметр функции
    # plain: - ключ хеша params[:article].inspect - значение хеша

    # render plain: params[:article].inspect


    @article = Article.new(article_params) 

    if @article.save #true если валидация подтверждена и выполнено действие
      
      redirect_to @article #редирект на /articles/id
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end



  def update
    @article = Article.find(params[:id])

    if @article.update(article_params) #true если валидация подтверждена и выполнено действие
      
      redirect_to @article #редирект на /articles/id
    else
      render action: 'edit'
    end

  end

  def destroy

    @article = Article.find(params[:id])

    @article.destroy

    redirect_to articles_path #редирект на /articles

  end


  private 

  def article_params #метод чтобы указать какие параметры класс может вытянуть из формы
    params.require(:article).permit(:title, :text)
  end

end
