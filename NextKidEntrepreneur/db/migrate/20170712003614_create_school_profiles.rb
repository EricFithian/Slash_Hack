class CreateSchoolProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :school_profiles do |t|
      t.string :school_name
      t.string :address
      t.string :phone_number
      t.string :contact_person
      t.string :occupation
      t.string :email

      t.timestamps
    end
  end
end
