class HomeController < ApplicationController

  def index
    @battles = Battle.all.order("score DESC")
  end

end
