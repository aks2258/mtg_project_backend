class DecksController < ApplicationController
    
    def index
        @decks = Deck.all
        render json: @decks
    end
    
    def create
        @deck=Deck.create(user_id: current_user.id, 
                        name: params["deck"]["name"], 
                        deck_type: params["deck"]["deck_type"])
        puts "============================="
        puts current_user
        puts @deck
        puts params
        render json: @deck
    end

    def show
        @deck = Deck.find(params[:id])
        render json: {deck: @deck, cards: @deck.cards}
    end

    def update
        @deck = Deck.find(params[:id])
        render json: @deck
    end

    def destroy
        @deck = Deck.find(params[:id])
        @deck.destroy
        render json: "Deck Deleted"
    end

    private
    
    def deck_params
        params.require(:deck).permit(:name, :user_id, :deck_type)
    end

end
