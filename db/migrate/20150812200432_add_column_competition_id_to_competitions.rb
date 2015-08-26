class AddColumnCompetitionIdToCompetitions < ActiveRecord::Migration
  def change
    add_column :competitions, :competition_id, :integer
  end
end
