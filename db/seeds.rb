# scorecard = Scorecard.new
# scorecard.pick_1 = "Norway"
# scorecard.pick_2 = "Australia"
# scorecard.pick_3 = "England"
# scorecard.pick_4 = "Cameroon"
# scorecard.pick_5 = "France"
# scorecard.pick_6 = "Brazil"
# scorecard.pick_7 = "USA"
# scorecard.pick_8 = "Spain"
# scorecard.pick_9 = "Italy"
# scorecard.pick_10 = "China"
# scorecard.pick_11 = "Netherlands"
# scorecard.pick_12 = "Japan"
# scorecard.pick_13 = "Germany"
# scorecard.pick_14 = "Nigeria"
# scorecard.pick_15 = "Sweden"
# scorecard.pick_16 = "Canada"
# scorecard.pick_q1 = "Norway"
# scorecard.pick_q2 = "England"
# scorecard.pick_q3 = "France"
# scorecard.pick_q4 = "USA"
# scorecard.pick_q7 = "Germany"
# scorecard.pick_q8 = "Sweden"
# scorecard.save

COUNTRIES_OUT = [
  "Argentina",
  "Australia",
  "Brazil",
  "Cameroon",
  "Canada",
  "Chile",
  "China",
  "Jamaica",
  "Japan",
  "South Korea",
  "New Zealand",
  "Nigeria",
  "Scotland",
  "South Africa",
  "Spain",
  "Thailand",
]
COUNTRIES_IN = [
  "England",
  "Germany",
  "France",
  "Italy",
  "Netherlands",
  "Norway",
  "Sweden",
  "USA"
]

COUNTRIES_IN.each do |country|
  team = Team.new
  team.name = country
  team.save
end

COUNTRIES_OUT.each do |country|
  team = Team.new
  team.name = country
  team.eliminated = true
  team.save
end
