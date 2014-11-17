class PagesController < ApplicationController
  def index
    redirect_to :controller => 'contacts', :action => 'new'
  end

  def propiedades
  end

  def compra
  end

  def renta
  end

  def venta
  end
end
