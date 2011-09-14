class CreatePagesTags < ActiveRecord::Migration
  def change
    create_table :pages_tags do |t|
      t.references :page
      t.references :tag
    end
  end
end
