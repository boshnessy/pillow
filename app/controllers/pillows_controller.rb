class PillowsController < ApplicationController
  def index
    pillows = Sleep.all
    render json: pillows.as_json
  end
end
