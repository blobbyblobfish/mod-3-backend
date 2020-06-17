class Api::V1::IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all 

        render json: ingredients
    end

    def show
        ingredient = Ingredient.find(params[:id])

        render json: ingredient
    end

    def create
        ingredient = Ingredient.create(ingredient_params)

        render json: ingredient
    end

    def destroy
        ingredient = Cocktail.find(params[:id])

        ingredient.destroy

        render json: {}
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name, :cocktail_id)
    end

end
