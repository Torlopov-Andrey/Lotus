class Discipline < ActiveRecord::Base
  has_many :tngs
  has_many :trainers
end
