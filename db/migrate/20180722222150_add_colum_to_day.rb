class AddColumToDay < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :workout, :string
  end
end
