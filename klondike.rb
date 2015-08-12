#!/usr/bin/env ruby -w
require "bundler"
Bundler.require

require_relative "puzzle"
require_relative "direction"
require_relative "point"

class SimpleWinner
  def initialize
    @p = Puzzle.new("./puzzle.txt")
  end

  def win
    current = @p.start_position
    current = @p.move(current, Direction::SW)
    current = @p.move(current, Direction::SW)
    current = @p.move(current, Direction::NE)
    current = @p.move(current, Direction::NE)
    current = @p.move(current, Direction::NE)
    current = @p.move(current, Direction::SW)
    current = @p.move(current, Direction::SW)
    current = @p.move(current, Direction::SW)
    current = @p.move(current, Direction::SE)
    ap current.winner?
  end
end

s = SimpleWinner.new
s.win
