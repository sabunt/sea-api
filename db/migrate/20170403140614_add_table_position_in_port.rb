class AddTablePositionInPort < ActiveRecord::Migration[5.0]
  def change
      create_table :positions_in_port do |t|
      t.belongs_to :positions, index: true
      t.belongs_to :port, index: true
      t.date :date
  end
  end
end
