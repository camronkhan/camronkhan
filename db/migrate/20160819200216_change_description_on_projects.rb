class ChangeDescriptionOnProjects < ActiveRecord::Migration[5.0]
  def change
  	change_column_null :projects, :description, false
  end
end
