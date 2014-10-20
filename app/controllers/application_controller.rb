class ApplicationController < ActionController::Base

  layout =

  def each_index
    @page = Page.where(name :'index')
  end
end
