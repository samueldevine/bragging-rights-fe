class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :nickname
      t.string :access_token

      t.timestamps
    end
  end
end
