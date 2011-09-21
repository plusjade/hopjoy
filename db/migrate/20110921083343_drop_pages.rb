class DropPages < ActiveRecord::Migration
  def up
    drop_table :pages
    drop_table :pages_tags
  end

  def down
  end
end
