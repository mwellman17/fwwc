class CreateScorecards < ActiveRecord::Migration[5.2]
  def change
    create_table :scorecards do |t|
      t.string :pick_1
      t.string :pick_2
      t.string :pick_3
      t.string :pick_4
      t.string :pick_5
      t.string :pick_6
      t.string :pick_7
      t.string :pick_8
      t.string :pick_9
      t.string :pick_10
      t.string :pick_11
      t.string :pick_12
      t.string :pick_13
      t.string :pick_14
      t.string :pick_15
      t.string :pick_16
      t.string :pick_q1
      t.string :pick_q2
      t.string :pick_q3
      t.string :pick_q4
      t.string :pick_q5
      t.string :pick_q6
      t.string :pick_q7
      t.string :pick_q8
      t.string :pick_s1
      t.string :pick_s2
      t.string :pick_s3
      t.string :pick_s4
      t.string :pick_f1
      t.string :pick_f2
      t.string :pick_winner
      t.string :pick_third


      t.timestamps
    end
  end
end
