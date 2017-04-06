class Position < ApplicationRecord
  has_many :inports
  has_many :ports, through: :inports


  def near
    type_cargo = self.type_cargo
    mcub =  self.hold_capacity
    port = self.ports.where("date >= ?", Date.today).order("date ASC").first #  берем ближайщую дату прибывания в(отправки из) порт
    #myports =  Port.in_range(1..1000, origin: [port.lat,port.lng]).ids #ищем ближайшие порты
    myports =  Port.closest(origin: [port.lat,port.lng]).ids
    endposition = Position.where(type_cargo: !type_cargo)
                          .where(hold_capacity: (mcub * 0.9)..(mcub * 1.1))
                          .joins(:inports).where(inports: {port_id: myports})
    return endposition.first
  end





end
