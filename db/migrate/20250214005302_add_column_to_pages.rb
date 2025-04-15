class AddColumnToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :name, :string
    add_column :pages, :url, :string
    add_column :pages, :check_type, :string
    add_column :pages, :selector, :string
    add_column :pages, :match_text, :string
  end
end
