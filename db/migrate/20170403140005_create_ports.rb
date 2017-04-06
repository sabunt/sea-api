class CreatePorts < ActiveRecord::Migration[5.0]
  def change
    create_table :ports do |t|
      t.float :lat
      t.float :lng
      t.string :title
    end
  end
end
