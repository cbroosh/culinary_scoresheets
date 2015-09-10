class AddColumnsToScoresheets < ActiveRecord::Migration
  def change
    add_column :scoresheets, :judge, :string
    add_column :scoresheets, :team, :string
  end
end
