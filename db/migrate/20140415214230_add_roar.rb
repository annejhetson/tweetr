class AddRoar < ActiveRecord::Migration
  def change
    add_column(:roars, :created_at, :datetime)
  end
end
