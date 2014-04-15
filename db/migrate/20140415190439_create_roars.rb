class CreateRoars < ActiveRecord::Migration
  def change
    create_table :roars do |t|
      t.string :roar
      t.integer :user_id

    end
  end
end
