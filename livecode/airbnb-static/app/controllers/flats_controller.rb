require "open-uri"

class FlatsController < ApplicationController

  # Everything uppercase, so Ruby knows it's a constant!
  FLATS_API_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  before_action :load_flats_db

  def index
  end

  def show
    @flat = @flats.find{|flat| flat["id"] == params[:id].to_i}
  end

  private
  def load_flats_db
    @flats = JSON.parse(open(FLATS_API_URL).read)
  end
end

