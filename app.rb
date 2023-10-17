require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:rules)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]

  @opo_move = moves.sample
  if @opo_move == "rock"
    @outcome = "lost"
  elsif @opo_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end

  erb(:scissors)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @opo_move = moves.sample
  if @opo_move == "rock"
    @outcome = "tied"
  elsif @opo_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:rock)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]

  @opo_move = moves.sample
  if @opo_move == "rock"
    @outcome = "won"
  elsif @opo_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

  erb(:paper)
end
