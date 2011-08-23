class WelcomeController < ApplicationController
  def index
    @articles = Article.order('created_at desc').page(params[:page] || 1).per(10)
  end

  def about
  end

end
