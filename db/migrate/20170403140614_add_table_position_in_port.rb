class AddTablePositionInPort < ActiveRecord::Migration[5.0]
  def change
    create_table :inports do |t|
      t.belongs_to :position, index: true
      t.belongs_to :port, index: true
      t.date :date
    end
  end
end
