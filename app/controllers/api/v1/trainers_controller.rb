class Api::V1::TrainersController < ApplicationController

  def index
    trainers = Trainer.all
    render json: trainers.map {|trainer|
      {
        trainer_id: trainer.id,
        name: trainer.name,
        photo: trainer.photo.avatar.url
      }
    }  
  end  

end