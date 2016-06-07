class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :handle
      t.string :profile_url
      t.text :statement

      t.timestamps null: false
    end
  end
end
