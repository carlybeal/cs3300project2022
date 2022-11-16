# This is a basic HomeController with an index that does one thig: render 
# the view file associated with the controller action

class HomeController < ApplicationController
    def index
        render
    end
end