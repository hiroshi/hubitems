class ItemsController < ApplicationController
  def index
    render :json => [{:content => "hello"}, {:content => "world"}]
  end

  def create
    render :json => {:content => params[:content]}
  end
end
