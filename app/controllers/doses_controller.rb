class DosesController < ApplicationController
  before_action :set_cocktail, except: [:destroy]
  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    dose = @cocktail.doses.create(dose_params)
    redirect_to cocktail_path(params[:cocktail_id])
  end

  def destroy
    dose = Dose.find(params[:id])
    dose.destroy
  end
  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
    # Never trust parameters from the scary internet, only allow the white list through.
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
