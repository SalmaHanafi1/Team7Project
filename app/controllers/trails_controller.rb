class TrailsController < ApplicationController
    def index
        @trail = Trail.all
    end
    def show
        @trail = Trail.find(params[:id])
    end
    
    def new
        @trail = Trail.new
    end
    
    def create
        @trail = Trail.new(trail_params)
        
        if @trail.save
        redirect_to @trail
        else
        render 'new'
        end
    end
end

private
    def trail_params
        params.require(:trail).permit(:Name, :Location, :Description, images: [])
    end