class Trainer < ActiveRecord::Base
  has_many :tngs

  belongs_to :discipline
  belongs_to :town

  mount_uploader :photo, PhotoUploader
end
