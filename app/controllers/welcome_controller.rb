class WelcomeController < ApplicationController
  def index
    @twit = Twit.all
  end
end
