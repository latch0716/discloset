class RecordsController < ApplicationController
  def index
    @records = Item.all
  end


end
