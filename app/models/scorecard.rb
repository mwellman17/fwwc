class Scorecard < ApplicationRecord
  def flag
    if self.pick_winner
      return "#{self.pick_winner}.png"
    else
      return "fifa.png"
    end
  end
end
