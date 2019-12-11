class ApplicationController < ActionController::Base
  include Clearance::Controller

end
def current_user 
    
    User.find_by(id: session[:user_id])
end

