class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.references :job, foreign_key: true
      t.references :user, foreign_key: true
      t.date :earliest_entry
      t.string :salary_expectations
      t.json :documents

      t.timestamps
    end
  end
end
