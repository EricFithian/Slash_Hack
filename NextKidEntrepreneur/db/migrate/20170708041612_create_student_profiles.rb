class CreateStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :student_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :occupation
      t.string :card_number
      t.string :card_expiration
      t.string :card_code

      t.timestamps
    end
  end
end
