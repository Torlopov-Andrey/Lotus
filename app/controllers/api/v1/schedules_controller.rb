class Api::V1::SchedulesController < ApplicationController

  def index
    @tngs = (Date.today..Date.today.end_of_week.weeks_since(2)).map do |date| 
      [date, Tng.where(day: date.wday)]
    end
    
    render json: @tngs.map { |date, tngs|
      tngs.map { |tng|  
        { date: date,
          day: tng.day,
          time: tng.time,
          town_id: tng.town.id,
          town_name: tng.town.name,
          discipline: tng.discipline.name,
          trainer_id: tng.trainer.id,
          hall: tng.hall 
        }
      }
    }
  end  
end  