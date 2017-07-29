class Api::CitiesController < ApplicationController
  def show
    city = City.find_by(id: params[:id])
    services = city.business_services.find_by(service: params[:service]).business_unit
    render json: services
  end
end
