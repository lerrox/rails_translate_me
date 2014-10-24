class ApplicationController < ActionController::Base

  layout false

  def each_index
    @page = Page.where(name :'index')
  end
end
