class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    tag = Tag.find(params[:tag_id])
    @recipe = tag.recipes.create(params[:recipe])
    if @recipe.valid?
      flash[:notice] = "You are special!"
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/new.html.erb')
    end
  end

   def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

    def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      flash[:update] = "You are up to date!"
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/new.html.erb')
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render('recipes/destroy.html.erb')
  end

end
