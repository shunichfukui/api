class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 20, default: ''
      t.string :password_digest, limit: 254
      t.string :email, null: false, limit: 254, default: ''
      t.integer :status,  limit: 4, null: false, unsigned: true, default: 0
      t.integer :gender, limit: 4, null: false, unsigned: true, default: 0

      t.timestamps
    end
  end
end
