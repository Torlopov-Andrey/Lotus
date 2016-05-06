class Api::V1::SchedulesController < ApplicationController
  before_action :set_tng, only: [:show, :edit, :update, :destroy]

  def index
    tngs = Tng.all
    render json: tngs.map { |tng| 
        { id: tng.id,
          town_id: tng.town.id,
          town_name: tng.town.name,
          trainer_id: tng.trainer.id,
          trainer_name: tng.trainer.name,
          discipline_id: tng.discipline_id,
          discipline_name: tng.discipline.name,
          day: tng.day, 
          hall: tng.hall, 
          time: tng.time
        }  
      }
  end  
  
  # def show
  #   render json: {
  #     id: @tng.id,
  #     trainer_id: @tng.trainer.id,
  #     trainer_name: @tng.trainer.name,
  #     trainer_photo: @tng.trainer.photo.avatar,
  #     discipline_id: @tng.discipline_id,
  #     discipline_name: @tng.discipline.name,
  #     discipline_description: @tng.discipline.description
  #   }
  # end
  
  def set_tng
    @tng = Tng.find(params[:id])
  end

end  