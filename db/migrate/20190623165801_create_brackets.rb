class CreateBrackets < ActiveRecord::Migration[5.2]
  def change
    create_table :brackets do |t|
      t.string :name, null: false
      t.string :pick_1, null: false
      t.string :pick_2, null: false
      t.string :pick_3, null: false
      t.string :pick_4, null: false
      t.string :pick_5, null: false
      t.string :pick_6, null: false
      t.string :pick_7, null: false
      t.string :pick_8, null: false
      t.string :pick_9, null: false
      t.string :pick_10, null: false
      t.string :pick_11, null: false
      t.string :pick_12, null: false
      t.string :pick_13, null: false
      t.string :pick_14, null: false
      t.string :pick_15, null: false
      t.string :pick_16, null: false
      t.string :pick_q1, null: false
      t.string :pick_q2, null: false
      t.string :pick_q3, null: false
      t.string :pick_q4, null: false
      t.string :pick_q5, null: false
      t.string :pick_q6, null: false
      t.string :pick_q7, null: false
      t.string :pick_q8, null: false
      t.string :pick_s1, null: false
      t.string :pick_s2, null: false
      t.string :pick_s3, null: false
      t.string :pick_s4, null: false
      t.string :pick_f1, null: false
      t.string :pick_f2, null: false
      t.string :pick_winner, null: false
      t.string :pick_third, null: false

      t.timestamps
    end
  end
end
