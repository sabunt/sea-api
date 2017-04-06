class AddDataInport < ActiveRecord::Migration[5.0]
  def change
    100.times do |n|
      name            = Faker::Name.first_name  
      hold_capacity   = rand(25000)
      type_cargo      = Faker::Boolean.boolean
      date_unic       = Faker::Date.unique.forward(100)
      date            = Faker::Date.forward(25)

      position = Position.create!(
        name:           name,
        hold_capacity:  hold_capacity,
        type_cargo:     type_cargo 
      )
      ports = Port.all
     
    
      if !position.type_cargo?
        position.inports.create!(
          date: date_unic,
          port: ports[rand(ports.size)])
        position.inports.create!(
          date: date,
          port: ports[0])
      else
        position.inports.create!(
          date: date,
          port: ports[rand(ports.size)])
      end
      
    end
  end
end
