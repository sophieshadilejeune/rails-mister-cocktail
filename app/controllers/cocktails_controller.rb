class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    # @ingredient = Ingredient.find(params[:cocktails_id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
      if @cocktail.save
        redirect_to cocktail_path(@cocktail)
      else
        render 'cocktails/new'
      end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to root_path
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image_URL, :photo)
  end
end
