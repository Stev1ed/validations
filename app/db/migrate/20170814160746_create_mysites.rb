class CreateMysites < ActiveRecord::Migration[5.1]
  def change
    create_table :mysites do |t|
      t.string :name
      t.string :website

      t.timestamps
    end
  end
end
