class ArticlesController < ApplicationController
  def new
  end
  # for POST method
  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      # auto redirection required page
      redirect_to @article
    else
      render action: 'new'
    end
  end

  private

  # Premit for marams
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
