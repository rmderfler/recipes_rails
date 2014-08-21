class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render('tags/index.html.erb')
  end

  def new
    @tag = Tag.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice_tag] = "You added a new tag!"
      redirect_to("/tags")
    else
      render('tags/new.html.erb')
    end
  end
end
