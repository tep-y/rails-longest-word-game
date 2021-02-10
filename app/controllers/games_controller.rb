class GamesController < ApplicationController
  def new
    letter_array = ('a'.. 'z').to_a
    @letters = letter_array.sample(10).join(" ")
  end

  def score
  end
end
