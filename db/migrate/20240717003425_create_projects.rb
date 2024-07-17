class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.string :project_url
      t.text :project_description
      t.string :project_image_url

      t.timestamps
    end
  end
end
