=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
class Team
  attr_reader :points

  def initialize(name)
    @name = name
    @match_played = 0
    @win = 0
    @draw = 0
    @loss = 0
    @points = 0
  end

  def win!
    @match_played += 1
    @win += 1
    @points += 3
  end

  def loss!
    @match_played += 1
    @loss += 1
  end

  def draw!
    @match_played += 1
    @draw += 1
    @points += 1
  end

  def print_score
    sprintf("%-31s|%3s |%3s |%3s |%3s |%3s\n", @name, @match_played, @win, @draw, @loss, @points)
  end
end

class Tournament
  def self.tally(input)
    teams = {}
    input.split("\n").each do |line|
      teams = count_point(line, teams)
    end
    print_result(teams)
  end

  private

  def self.count_point(line, teams)
    result = line.split(';')
      teams[result[0]] ||= Team.new(result[0])
      teams[result[1]] ||= Team.new(result[1])

      if result[2] == 'win'
        teams[result[0]].win!
        teams[result[1]].loss!
      elsif result[2] == 'loss'
        teams[result[1]].win!
        teams[result[0]].loss!
      elsif result[2] == 'draw'
        teams[result[0]].draw!
        teams[result[1]].draw!
      end
      teams
  end

  def self.print_result(teams)
    res = ['Team', 'MP', 'W', 'D', 'L', 'P']
    printed_result = sprintf("%-31s|%3s |%3s |%3s |%3s |%3s\n", *res)
    teams.sort_by{ |t| [-t[1].points, t[0]] }.each do | team |
      printed_result += team[1].print_score
    end
    printed_result
  end
end
