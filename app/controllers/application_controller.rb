class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :tags

  def tags
    @tags = Article.tag_counts
  end
end
