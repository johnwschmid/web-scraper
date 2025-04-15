class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|

      t.timestamps
    end
    add_column :results, :success, :string
  end
end
