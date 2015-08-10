class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :judge
      t.string :team
      t.string :start_date
      t.timestamps null: false
    end
  end
end
