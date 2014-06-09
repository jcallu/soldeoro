class PagesController < ApplicationController
  def index
    redirect_to :controller => 'contacts', :action => 'new'
  end
end
