require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10).join(" ")
    @letters
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    user_serialized = open(url).read
    json_file = JSON.parse(user_serialized)
    @english_word = json_file["found"]

    # @grid = @letters.map { |letter|
    #   letter }
  end
end
