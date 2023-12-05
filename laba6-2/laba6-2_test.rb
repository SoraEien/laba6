# frozen_string_literal: true

require 'minitest/autorun'
require './laba6-2/laba6-2_code.rb'

# Test  function
class TestAreaCalculation < Minitest::Test
  def test_calculate_area_with_precision_0_001
    assert_in_delta 3.141, calculate_area(1, 0.001), 0.001
  end

  def test_calculate_area_with_precision_0_0001
    assert_in_delta 3.1415, calculate_area(1, 0.0001), 0.0001
  end
end