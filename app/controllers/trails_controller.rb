class TrailsController < ApplicationController
    def show
        @trail = Trail.find(params[:id])
    end
    def new
    end
    
    def create
        @trail = Trail.new(trail_params)
        
        @trail.save
        redirect_to @trail
    end
end

private
    def trail_params
        params.require(:trail).permit(:Name, :Location, :Description)
    end