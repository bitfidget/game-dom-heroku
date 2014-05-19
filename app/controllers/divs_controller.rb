class DivsController < ApplicationController

  def index
    @divs = Div.all
  end

  def destroy
    @div = Div.find(params[:id])
    @div.destroy
  end

end
