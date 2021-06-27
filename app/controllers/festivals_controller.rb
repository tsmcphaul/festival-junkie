class FestivalsController < ApplicationController
    before_action :logged_in?

    def new
        @festival = Festival.new
    end

    def create
        @festival = Festival.new(festival_params)
        @festival.user_id = session[:user_id]
        if @festival.save
         
            redirect_to festivals_path
        else
            redirect_to new_festival_path
        end
    end

    def index
        if logged_in?
            @festivals = Festival.all
        else
            redirect_to login_path
        end
    end

    def show
        @festival = Festival.find_by_id(params[:id])
    end


    def edit
    end

    def update
    end

    def destroy
        @festival.delete
        redirect_to user_festivals_path
    end

    private
    def festival_params
        params.require(:festival).permit(:title, :date, :city, :state, :genre, :artist, :venue)
    end

    
end
