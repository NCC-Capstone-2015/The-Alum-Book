class BasicSearchesController < ApplicationController
  # GET /basic_searches
  # GET /basic_searches.json
  def index
    @search = Login.search(params[:q])
    @searches = @search.result
  end
  def search
    index
    render :index
  end
end