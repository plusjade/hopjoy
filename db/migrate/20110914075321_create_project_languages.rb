class CreateProjectLanguages < ActiveRecord::Migration
  def change
    create_table :languages_projects do |t|
      t.references :language
      t.references :project
    end
  end
end
