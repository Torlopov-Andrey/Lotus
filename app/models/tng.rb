class Tng < ActiveRecord::Base
  belongs_to :town
  belongs_to :trainer
  belongs_to :discipline

  has_many :visits
end
