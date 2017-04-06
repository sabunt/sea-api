require 'rails_helper'

RSpec.describe Position, type: :model do
  before do
    @port = FactoryGirl.create(:port)
    @pos = Position.create({ name:"Cargo", hold_capacity:  10000, type_cargo: true})
    @pos2 =  Position.create({ name:"Ship", hold_capacity:  10500, type_cargo: false})
    @inport = Inport.create({date: DateTime.now, port_id:  @port.id, position_id: @pos.id})
    @inport = Inport.create({date: DateTime.now, port_id:  @port.id, position_id: @pos2.id})

  end
  it 'find near position' do
    
    near = @pos.near
    expect(near).not_to be_nil
  end
  
end
