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
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      redirect_to("/recipes/#{@recipe.id}")
    else
      render('recipes/new.html.erb')
    end
  end
end
