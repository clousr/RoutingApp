class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def something
    @thing = params[:thing]
  end
  
end
