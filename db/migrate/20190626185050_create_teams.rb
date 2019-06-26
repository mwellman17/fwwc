class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.boolean :eliminated, default: false

      t.timestamps
    end
  end
end
