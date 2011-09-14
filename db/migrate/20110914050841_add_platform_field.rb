class AddPlatformField < ActiveRecord::Migration
  def change
    change_table :page do |t|
      add_column :platform, :string
    end
  end

end
