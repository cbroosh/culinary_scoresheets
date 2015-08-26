class AddColumnTitleToCompetitions < ActiveRecord::Migration
  def change
    add_column :competitions, :title, :string
  end
end
