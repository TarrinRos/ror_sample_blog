class ArticlesController < ApplicationController
  before_action :authenticate_user!
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end
  # for POST method
  def create
    @article = Article.new(article_params)
    if @article.save
      # auto redirection required page
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      # auto redirection required page
      redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    # to articles list redirection
    redirect_to articles_path
    # redirect_to action: :index - alternative redirection
  end

  private

  # Premit for marams
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
