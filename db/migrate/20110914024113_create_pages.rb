class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :slug
      t.string :type
      t.text :body
      t.timestamps
    end
  end
end
