class CreateAvatar < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.integer :user_id
      t.attachment :avatar
      t.timestamps
    end
  end
end
