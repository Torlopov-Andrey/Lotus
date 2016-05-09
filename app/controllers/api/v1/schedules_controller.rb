class Api::V1::SchedulesController < ApplicationController
  before_action :set_tng, only: [:show, :edit, :update, :destroy]

  def index
    tngs = Tng.all.group_by {|tng| tng.day}
      render json: tngs.map { |day, tng|
        tng.map { |t|
          { day: t.day,
            time: t.time,
            town_id: t.town.id,
            town_name: t.town.name,
            trainer_id: t.trainer.id,
            trainer_name: t.trainer.name,
            discipline_id: t.discipline_id,
            discipline_name: t.discipline.name, 
            hall: t.hall 
        }  
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