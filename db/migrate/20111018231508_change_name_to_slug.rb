class ChangeNameToSlug < ActiveRecord::Migration

  def change
    rename_column :languages, :name, :slug
  end
    
end
