class SorceryCore < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :login_id,            null: false, index: { unique: true }
      t.string :user_name
      t.integer :role, default: 0, null: false
      t.string :crypted_password
      t.string :salt

      t.timestamps                null: false
    end
  end
end
