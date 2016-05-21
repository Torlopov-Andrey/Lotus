# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

towns = Town.create([ { name: 'Ухта', address: 'ул. Коммунальная, д. 7', phone: '8 (8216) 77-83-35' }, 
                    { name: 'Москва', address: 'ул. Профсоюзная, д. 5/9', phone: '8 (499) 125-55-38' }, 
                    { name: 'Сыктывкар', address: 'ул. Коммунмстическая, д. 50а', phone: '8 (8212) 577-443' }])
trainers = Trainer.create ([
                          { name: 'Елена Исинбаева', photo: File.open('app/assets/images/isinbaeva.jpg') },
                          { name: 'Андрей Аршавин', photo: File.open('app/assets/images/andrej-arshavin.jpg') }, 
                          { name: 'Мария Шарапова', photo: File.open('app/assets/images/sharapova.jpg') }, 
                          { name: 'Евгений Плющенко', photo: File.open('app/assets/images/plushenko.jpg') }, 
                          { name: 'Алина Кабаева', photo: File.open('app/assets/images/kabaeva.jpg') }, 
                          { name: 'Майкл Джордан', photo: File.open('app/assets/images/djordan.jpg') }
                          ])
                          
description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat 
non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"

disciplines = Discipline.create ([
                          { name: 'хатха йога', description: description }, { name: 'йога для детей', description: description  }, 
                          { name: 'айенгар йога', description: description  }, { name: 'аэро йога', description: description  }, 
                          { name: 'йога терапия', description: description  }, { name: 'стрейчинг', description: description  }, 
                          { name: 'ABL', description: description  }, { name: 'функциональная тренировка', description: description }, 
                          { name: 'персональная тренировка', description: description  }, { name: 'здоровая спина' , description: description },
                          { name: 'пилатес', description: description  }, { name: 'плоский живот', description: description  }
                          ])

# discipline = 
# trainer = trainers.shuffle.first

tngs = (10..23).to_a.map do |time|
  ["#{time}:00".to_time, Discipline.all.sample, Trainer.all.sample, towns.first, '1']
end


(0..6).to_a.each do |day|
  tngs.each do |time, discipline, trainer, town, hall|
    Tng.create(day: day, time: time, discipline: discipline, trainer: trainer, town: town, hall: hall )
  end  
end