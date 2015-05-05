class TwitsController < ApplicationController

  def index
    @twit = Twit.all
  end

  def show
    @twit = Twit.find(params[:id])
  end

  def new
  end

  def create
   @twit = Twit.new(params.require(:twit).permit(:text, :text))
   @twit.save
   redirect_to @twit
  end
end
