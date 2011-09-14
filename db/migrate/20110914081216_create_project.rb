class CreateProject < ActiveRecord::Migration
  def change
    add_column :projects, :slug, :string
    add_column :projects, :body, :text
    add_column :projects, :platform, :string
  end

end
