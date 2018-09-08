class CreateApplicants < ActiveRecord::Migration[5.2]
  def change
    create_table :applicants do |t|
      t.string :salutation
      t.string :firstname
      t.string :lastname
      t.string :street
      t.string :postcode
      t.string :place
      t.date :birthday
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
