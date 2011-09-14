class Blah < ActiveRecord::Migration
  def change
    add_column :pages, :platform, :string
  end
end
