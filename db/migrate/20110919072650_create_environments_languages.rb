class CreateEnvironmentsLanguages < ActiveRecord::Migration
  def change
    create_table :environments_languages do |t|
      t.references :environment
      t.references :language
    end
  end
end
