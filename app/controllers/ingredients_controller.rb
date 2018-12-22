class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params[:name])
    if @ingredient.save
      redirect_to @ingredient
    else
      redirect_to "new"
    end
  end

  def edit
  end
end
