class CardsController < ApplicationController
    def index
        @cards = Card.all
        render json: @cards
    end
    
    def new
        @card=Card.new
    end

    def show
        @card =  Card.find(params[:id])
        render json: @card
    end

    def update
        @card = Card.find(params[:id])
    end

    def destroy
        @card = Card.find(params[:id])

    end
end
