class PillowsController < ApplicationController
  def index
    pillows = Sleep.all
    render json: pillows.as_json
  end

  def show
    id = params[:id]
    pillow = Sleep.find_by(id: id)
    render json: pillow.as_json
  end
end
