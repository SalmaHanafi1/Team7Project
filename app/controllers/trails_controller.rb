class TrailsController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:trail].inspect
    end
end
