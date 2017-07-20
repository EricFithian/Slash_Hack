class CreatePricings < ActiveRecord::Migration[5.0]
  def change
    create_table :pricings do |t|
      t.decimal :price
      t.string :workshops
      t.string :schools
      t.string :students

      t.timestamps
    end
  end
end
