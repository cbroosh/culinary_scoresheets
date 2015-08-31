class CreateScoresheets < ActiveRecord::Migration
  def change
    create_table :scoresheets do |t|
      t.integer :app_serve_method
      t.integer :app_portion_nutrition
      t.integer :app_creativity_compatibility
      t.integer :app_flavor_texture_doneness
      t.string :app_comments
      t.integer :entree_serve_method
      t.integer :entree_portion_nutrition
      t.integer :entree_creativity_compatibility
      t.integer :entree_flavor_texture_doneness
      t.string :entree_comments
      t.timestamps null: false
    end
  end
end
