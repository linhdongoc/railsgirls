class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.references :job, foreign_key: true
      t.references :applicant, foreign_key: true
      t.date :earliest_entry
      t.decimal :salary_expectations, precision: 8, scale: 2
      t.string :foto
      t.string :cover_letter
      t.string :cv
      t.json :certificates

      t.timestamps
    end
  end
end
