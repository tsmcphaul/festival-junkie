class FestivalsController < ApplicationController

    def new
        @festival = Festival.new
    end

    def create
    end

    def index
    end


    def edit
    end

    def update
    end

    private
    def festival_params
        params.require(:festival).permit(:title, :date, :city, :state, :genre, :artist, :venue,)
    end

    
end
