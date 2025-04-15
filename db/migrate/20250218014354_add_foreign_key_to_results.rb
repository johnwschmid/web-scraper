class AddForeignKeyToResults < ActiveRecord::Migration[7.0]
  def change
    add_reference :results, :page, null: false, foreign_key: true
  end
end
