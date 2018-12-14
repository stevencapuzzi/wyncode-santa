class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :secret

      t.timestamps
    end
    :email, unique: true
  end
end