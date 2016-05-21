class Tng < ActiveRecord::Base
  belongs_to :town
  belongs_to :trainer
  belongs_to :discipline

  has_many :visits
  accepts_nested_attributes_for :visits

 
  scope :today_schedule, -> { where( 'day= ?', Date.today.wday) }

  scope :week_end, -> {(Date.today..Date.today.end_of_week)}

  
  
  def find_day
    (Date.today..7.days.from_now).each do |date|
      Tng.all.each do |tng|
        if tng.day == date.wday
          date
        end
      end
    end        
  end  
end
