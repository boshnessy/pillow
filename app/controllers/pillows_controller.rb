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

  def create
    pillow = Sleep.new(
      name: params[:name],
      price: params[:price],
      description: params[:description] 
    )
    if pillow.save
      render json: pillow.as_json, status: :created
    else
      render json: {errors: pillow.errors.full_messages}
    end
  end

  def update
    id = params[:id]
    pillow = Sleep.find_by(id: id)
    pillow.update(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    if pillow.save
      render json: pillow.as_json, status: :created
    else
      render json: {errors: pillow.errors.full_messages}
    end
  end

  def destroy
    id = params[:id]
    pillow = Sleep.find_by(id: id)
    if pillow.destroy
      render json: {message: "Item deleted"}
    else
      render json: {errors: pillow.errors.full_messages}
    end
  end
end
