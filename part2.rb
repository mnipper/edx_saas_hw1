class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  wins = [ ['R', 'S'], ['S', 'P'], ['P', 'R'] ]
  wins.each do |w|
    return m2 if m1[1].upcase == w[1] and m2[1].upcase == w[0]
  end
  m1
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |m| 
    raise NoSuchStrategyError unless m[1] =~ /^(R|P|S)$/i
  end
  rps_result(game[0], game[1])
end

def rps_tournament_winner(tournament)
  if tournament.flatten(1).first.kind_of? String
    rps_game_winner(tournament)
  else
    winner(Array.new([winner(tournament[0]), winner(tournament[1])]))
  end
end

alias :winner :rps_tournament_winner
