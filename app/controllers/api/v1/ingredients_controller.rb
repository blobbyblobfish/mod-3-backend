class Api::V1::IngredientsController < ApplicationController

    def show
        ingredient = Ingredient.find(params[:id])

        render json: ingredient
    end

    def show_name
        ingredient = Ingredient.find(params[:id])

        render json: ingredient, only: [:name]
    end 

    def create
        ingredient = Ingredient.create(ingredient_params)

        render json: ingredient, except: [:created_at, :updated_at]
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :cocktail_id)
    end

end
