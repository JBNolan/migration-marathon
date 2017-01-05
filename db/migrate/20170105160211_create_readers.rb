class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :fullname, null: false
      t.string :email, null: false
      t.string :phonenumber, null: false
    end
  end
end
