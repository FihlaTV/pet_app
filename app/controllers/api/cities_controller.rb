class Api::CitiesController < ApplicationController
  def show
    city = City.find_by(id: params[:id])
    render json: city
  end
end