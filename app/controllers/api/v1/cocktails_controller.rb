class Api::V1::CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all

        render json: cocktails, include: [:cocktail_ingredients, :ingredients], except: [:created_at, :updated_at]
    end

end
