class InPool < ActiveRecord::Migration[5.2]
  def change
    add_column :brackets, :in_pool, :boolean, default: true
  end
end
