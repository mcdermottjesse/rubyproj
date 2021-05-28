class AddColourToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :colour, :string
  end
end
