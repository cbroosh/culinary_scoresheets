class AddColumnToScoresheets < ActiveRecord::Migration
  def change
    add_column :scoresheets, :competition_id, :integer
  end
end
