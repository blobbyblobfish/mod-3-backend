class Api::V1::CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all

        render json: cocktails, except: [:created_at, :updated_at]
    end

end
