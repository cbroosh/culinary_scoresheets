class AddCompetitionIdColumnToJudge < ActiveRecord::Migration
  def change
    add_column :judges, :competition_id, :integer
  end
end
