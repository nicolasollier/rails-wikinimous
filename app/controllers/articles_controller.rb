class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def task_params
    params.require(:article).permit(:title, :content)
  end
end
