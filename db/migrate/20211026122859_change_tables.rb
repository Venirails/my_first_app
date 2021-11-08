class ChangeTables < ActiveRecord::Migration[6.1]
  def change
  	add_column :books,:publisher,:string
  	rename_column :students,:name,:student_name
  	remove_timestamps :books
  end
end
