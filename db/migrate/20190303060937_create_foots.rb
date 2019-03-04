class CreateFoots < ActiveRecord::Migration[5.2]
  def change
    create_table :foots do |t|
      t.integer :number
      t.date :date_entry

      t.timestamps
    end
  end
end