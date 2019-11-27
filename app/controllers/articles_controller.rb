class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)

      if @article.valid?
        @article.save
        redirect_to @article
      else
        render action: 'new'
      end
  end

  def edit
    @article = Article.find(params[:id]) #копируем по факту def show, чтобы отобразить все атрибуты сущности, которые придется редактировать 
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
