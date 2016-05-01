class AddNameToUrl < ActiveRecord::Migration
  def change
    add_column :urls, :name, :string
  end
end
