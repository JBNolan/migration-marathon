class ModifyReaderInCheckout < ActiveRecord::Migration
  def change
    change_column :checkouts, :reader_id, :integer, null: false
  end
end
