class Api::V1::CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all

        render json: cocktails, include: [:ingredients], except: [:created_at, :updated_at]
    end

    def show
        cocktail = Cocktail.find(params[:id])

        render json: cocktail, include: [:ingredients], except: [:created_at, :updated_at]
    end

    def create
        cocktail = Cocktail.create(cocktail_params)

        render json: cocktail, include: [:ingredients], except: [:created_at, :updated_at]
    end

    def destroy
        cocktail = Cocktail.find(params[:id])

        cocktail.destroy

        render json: {}
    end

    private

    def cocktail_params
        params.require(:cocktail).permit(:name, :directions, :image_url)
    end
end
