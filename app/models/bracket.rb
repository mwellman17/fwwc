ROUND_ONE = [
  "pick_1",
  "pick_2",
  "pick_3",
  "pick_4",
  "pick_5",
  "pick_6",
  "pick_7",
  "pick_8",
  "pick_9",
  "pick_10",
  "pick_11",
  "pick_12",
  "pick_13",
  "pick_14",
  "pick_15",
  "pick_16"
]
ROUND_TWO = [
  "pick_q1",
  "pick_q2",
  "pick_q3",
  "pick_q4",
  "pick_q5",
  "pick_q6",
  "pick_q7",
  "pick_q8"
]
ROUND_THREE = [
  "pick_s1",
  "pick_s2",
  "pick_s3",
  "pick_s4"
]
ROUND_FOUR = [
  "pick_f1",
  "pick_f2"
]

class Bracket < ApplicationRecord
  validates :name, presence: true
  validates :pick_1, presence: true
  validates :pick_2, presence: true
  validates :pick_3, presence: true
  validates :pick_4, presence: true
  validates :pick_5, presence: true
  validates :pick_6, presence: true
  validates :pick_7, presence: true
  validates :pick_8, presence: true
  validates :pick_9, presence: true
  validates :pick_10, presence: true
  validates :pick_11, presence: true
  validates :pick_12, presence: true
  validates :pick_13, presence: true
  validates :pick_14, presence: true
  validates :pick_15, presence: true
  validates :pick_16, presence: true
  validates :pick_q1, presence: true
  validates :pick_q2, presence: true
  validates :pick_q3, presence: true
  validates :pick_q4, presence: true
  validates :pick_q5, presence: true
  validates :pick_q6, presence: true
  validates :pick_q7, presence: true
  validates :pick_q8, presence: true
  validates :pick_s1, presence: true
  validates :pick_s2, presence: true
  validates :pick_s3, presence: true
  validates :pick_s4, presence: true
  validates :pick_f1, presence: true
  validates :pick_f2, presence: true
  validates :pick_winner, presence: true
  validates :pick_third, presence: true

  def flag
    "#{self.pick_winner}.png"
  end

  def score
    points = 0
    ROUND_ONE.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 2
      end
    end
    ROUND_TWO.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 5
      end
    end
    ROUND_THREE.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 10
      end
    end
    ROUND_FOUR.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 20
      end
    end
    if self.pick_third == $scorecard.pick_third
      points += 20
    end
    if self.pick_winner == $scorecard.pick_winner
      points += 50
    end
    return points
  end

  def talent_score
    points = 0
    ROUND_ONE.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 0
      end
    end
    ROUND_TWO.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 2
      end
    end
    ROUND_THREE.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 4
      end
    end
    ROUND_FOUR.each do |pick|
      if self[pick] == $scorecard[pick]
        points += 8
      end
    end
    if self.pick_third == $scorecard.pick_third
      points += 12
    end
    if self.pick_winner == $scorecard.pick_winner
      points += 16
    end
    return points
  end


  def check_round_one (pick, round_one_ticker)
    !$scorecard[pick] && (self[pick] == $scorecard[ROUND_ONE[round_one_ticker]] || self[pick] == $scorecard[ROUND_ONE[round_one_ticker + 1]])
  end

  def check_round_two (pick, round_one_ticker, round_two_ticker)
    if self[pick] == $scorecard[ROUND_TWO[round_two_ticker]] || self[pick] == $scorecard[ROUND_TWO[round_two_ticker + 1]]
      return true
    else
      2.times do
        if !$scorecard[ROUND_TWO[round_two_ticker]] && check_round_one(pick, round_one_ticker)
          return true
        end
        round_two_ticker += 1
        round_one_ticker += 2
      end
    end
    return false
  end

  def check_round_three (pick, round_one_ticker, round_two_ticker, round_three_ticker)
    if self[pick] == $scorecard[ROUND_THREE[round_three_ticker]] || self[pick] == $scorecard[ROUND_THREE[round_three_ticker + 1]]
      return true
    else
      2.times do
        if !$scorecard[ROUND_THREE[round_three_ticker]] && check_round_two(pick, round_one_ticker, round_two_ticker)
          return true
        end
        round_three_ticker += 1
        round_two_ticker += 2
        round_one_ticker += 4
      end
    end
    return false
  end

  def check_round_four (pick, round_one_ticker, round_two_ticker, round_three_ticker, round_four_ticker)
    if self[pick] == $scorecard[ROUND_FOUR[round_four_ticker]] || self[pick] == $scorecard[ROUND_FOUR[round_four_ticker + 1]]
      return true
    else
      2.times do
        if !$scorecard[ROUND_FOUR[round_four_ticker]] && check_round_three(pick, round_one_ticker, round_two_ticker, round_three_ticker)
          return true
        end
        round_four_ticker += 1
        round_three_ticker += 2
        round_two_ticker += 4
        round_one_ticker += 8
      end
    end
    return false
  end

  def possible_points
    possible_counter = self.score
    round_one_ticker = 0
    ROUND_TWO.each do |pick|
      if !$scorecard[pick] && check_round_one(pick, round_one_ticker)
        possible_counter += 5
      end
      round_one_ticker += 2
    end

    round_one_ticker = 0
    round_two_ticker = 0
    ROUND_THREE.each do |pick|
      if !$scorecard[pick] && check_round_two(pick, round_one_ticker, round_two_ticker)
        possible_counter += 10
      end
      round_one_ticker += 4
      round_two_ticker += 2
    end

    round_one_ticker = 0
    round_two_ticker = 0
    round_three_ticker = 0
    ROUND_FOUR.each do |pick|
      if !$scorecard[pick] && check_round_three(pick, round_one_ticker, round_two_ticker, round_three_ticker)
        possible_counter += 20
      end
      round_one_ticker += 8
      round_two_ticker += 4
      round_three_ticker += 2
    end

    if !$scorecard.pick_winner && Team.exists?(:name => self.pick_winner) && !Team.find_by(:name => self.pick_winner).eliminated
      possible_counter += 50
    end

    if !$scorecard.pick_third && Team.exists?(:name => self.pick_third) && !Team.find_by(:name => self.pick_third).eliminated && self.pick_third != $scorecard.pick_f1 && self.pick_third != $scorecard.pick_f2
      possible_counter += 20
    end
    return possible_counter
  end

  def talent_possible_points
    possible_counter = self.talent_score
    round_one_ticker = 0
    ROUND_TWO.each do |pick|
      if !$scorecard[pick] && check_round_one(pick, round_one_ticker)
        possible_counter += 2
      end
      round_one_ticker += 2
    end

    round_one_ticker = 0
    round_two_ticker = 0
    ROUND_THREE.each do |pick|
      if !$scorecard[pick] && check_round_two(pick, round_one_ticker, round_two_ticker)
        possible_counter += 4
      end
      round_one_ticker += 4
      round_two_ticker += 2
    end

    round_one_ticker = 0
    round_two_ticker = 0
    round_three_ticker = 0
    ROUND_FOUR.each do |pick|
      if !$scorecard[pick] && check_round_three(pick, round_one_ticker, round_two_ticker, round_three_ticker)
        possible_counter += 8
      end
      round_one_ticker += 8
      round_two_ticker += 4
      round_three_ticker += 2
    end

    if !$scorecard.pick_winner && Team.exists?(:name => self.pick_winner) && !Team.find_by(:name => self.pick_winner).eliminated
      possible_counter += 16
    end

    if !$scorecard.pick_third && Team.exists?(:name => self.pick_third) && !Team.find_by(:name => self.pick_third).eliminated && self.pick_third != $scorecard.pick_f1 && self.pick_third != $scorecard.pick_f2
      possible_counter += 12
    end
    return possible_counter
  end

  def rank
    brackets = Bracket.where(:in_pool => true).sort { |a, b|  b.score <=> a.score }
    ranking = brackets.index { |obj| obj.score == self.score }
    return ranking + 1
  end

  def talent_rank
    brackets = Bracket.where(:in_pool => false).sort { |a, b|  b.score <=> a.score }
    ranking = brackets.index { |obj| obj.score == self.score }
    return ranking + 1
  end

  def last_name
    name_array = self.name.split(' ')
    if name_array.length > 1
      return name_array[1]
    else
      return self.name
    end
  end
end
