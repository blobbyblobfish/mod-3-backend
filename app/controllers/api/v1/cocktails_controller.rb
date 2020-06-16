class Api::V1::CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all

        render json: cocktails, include: [:ingredients], except: [:created_at, :updated_at]
    end

    def show
        cocktail = Cocktail.find(params[:id])

        render json: cocktail, include: [:ingredients], except: [:created_at, :updated_at]
    end

end
