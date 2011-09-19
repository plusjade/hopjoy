class HasOneEnv < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.references :environment
    end
    remove_column :projects, :platform
  end

end
