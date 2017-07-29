class Api::BusinessUnitsController < ApplicationController
  def index
    @business_units = BusinessUnit.all

    render json: @business_units
  end
end
