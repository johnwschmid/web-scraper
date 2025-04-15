class ChangeResultsColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :results, :success, :boolean
  end
end
