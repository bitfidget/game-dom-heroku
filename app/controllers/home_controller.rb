class HomeController < ApplicationController

  def index
    @battles = Battle.all
  end

end
