class CreatePorts < ActiveRecord::Migration[5.0]
  def change
    create_table :ports do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
    end
  end
end
