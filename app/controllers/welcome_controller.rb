class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Reverb API" }
      end
end
