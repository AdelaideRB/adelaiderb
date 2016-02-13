class PublicController < ApplicationController
  def index
    @news = News.all
  end
end
