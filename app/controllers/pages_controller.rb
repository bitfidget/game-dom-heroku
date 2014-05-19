class PagesController < ApplicationController

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
  end

end
