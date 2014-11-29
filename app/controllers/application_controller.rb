class ApplicationController < ActionController::Base

  layout false

  def index
    @services = Service.find([1,2,3])
  end

  def each_index
    @page = Page.where(name :'index')
  end
end
