class CreateSignUps < ActiveRecord::Migration[5.1]
  def change
    create_table :sign_ups do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
