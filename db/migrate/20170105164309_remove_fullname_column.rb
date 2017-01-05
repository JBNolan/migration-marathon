class RemoveFullnameColumn < ActiveRecord::Migration
  def up
    remove_column :readers, :fullname
  end

  def down
    add_column :readers, :fullname, :string
  end
end
