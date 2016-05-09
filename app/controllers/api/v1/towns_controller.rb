class Api::V1::TownsController < ApplicationController
  before_action :set_town, only: [:show, :edit, :dstroy]

  def index
    towns = Town.all
    render json: towns.map{ |town|
      {
        name: town.name,
        addess: town.address,
        phone: town.phone
      }
    }
  end  
  
  def show
    render json: {
      name: @town.name,
      address: @town.address,
      phone: @town.phone
    }
  end  
  
  def set_town
    @town = Town.find(params[:id])
  end  
end  