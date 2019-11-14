class DosesController < ApplicationController

before_action :find_cocktail, only: [:new, :create]

  # def show
  #   @cocktail = Cocktail.find(params[:id])
  #   # @ingredient = Ingredient.find(params[:cocktails_id])
  # end

  def new
    @dose = Dose.new
  end

  def create
    # @cocktail = Cocktail.find(params[:dose][:cocktail_id])
    # @ingredient = Ingredient.find(params[:dose][:ingredient_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    # @dose.ingredient = @ingredient
    # @dose.cocktail = @cocktail
    # @dose.ingredient = ingredient
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'doses/new'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end


private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
  def find_cocktail
     @cocktail = Cocktail.find(params[:cocktail_id])
   end
end
