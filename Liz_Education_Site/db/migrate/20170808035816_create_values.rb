class CreateValues < ActiveRecord::Migration[5.0]
  def change
    create_table :values do |t|
      t.string :idea
      t.integer :student_age
      t.string :student_school

      t.timestamps
    end
  end
end
