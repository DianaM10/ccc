require 'minitest/autorun'
require 'minitest/rg'
require_relative '../room'
require_relative '../song'
require_relative '../guest'

class TestGuest < Minitest::Test

  def setup
    @name = Guest.new()
  end




end
