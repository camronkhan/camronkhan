class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title, null: false, unique: true
      t.text :description
      t.text :body
      t.string :image
      t.string :project_location
      t.string :source_location
      t.boolean :featured, null: false, default: false

      t.timestamps
    end
  end
end
