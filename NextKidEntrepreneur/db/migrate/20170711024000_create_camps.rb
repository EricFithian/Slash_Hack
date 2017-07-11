class CreateCamps < ActiveRecord::Migration[5.0]
  def change
    create_table :camps do |t|
      t.string :name
      t.string :description
      t.string :start_date
      t.string :end_date
      t.decimal :price

      t.timestamps
    end
  end
end
