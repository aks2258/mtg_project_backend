class CardsController < ApplicationController
    def index
        @cards = Card.all
        render json: @cards
    end
    
    def create
        @card=Card.create(
                        name: params["card"]["name"], 
                        manaCost: params["card"]["manaCost"],
                        colors: params["card"]["colors"],
                        types: params["card"]["types"],
                        subtypes: params["card"]["subtypes"],
                        card_effect: params["card"]["card_effect"],
                        power: params["card"]["power"],
                        toughness: params["card"]["toughness"],
                        imgUrl: params["card"]["imgUrl"],
                        deck_id: params["card"]["deck_id"]
                        )
        puts "============================="
        puts current_user
        puts @card
        puts params
        render json: @card
    end

    def show
        @card =  Card.find(params[:id])
        render json: @card
    end

    def update
        @card = Card.find(params[:id])
        render json: @deck
    end

    def destroy
        @card = Card.find(params[:id])
        @card.destroy
        render json: "Card Deleted"
    end
end
