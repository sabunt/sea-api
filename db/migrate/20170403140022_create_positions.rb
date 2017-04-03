class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :hold_capacity
      t.boolean :type_cargo, nil: false, default: false

     
    end
  end
end
