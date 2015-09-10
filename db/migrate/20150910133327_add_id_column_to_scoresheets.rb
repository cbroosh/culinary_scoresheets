class AddIdColumnToScoresheets < ActiveRecord::Migration
  def change
    add_column :scoresheets, :scoresheet_id, :integer
  end
end
