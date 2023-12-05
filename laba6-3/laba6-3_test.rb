# frozen_string_literal: true

require 'minitest/autorun'
require './laba6-3/laba6-3_code.rb'

# Test  function
class IntegrationTest < Minitest::Test
  def test_intprg_with_lambda
    assert_in_delta 1.125, intprg(0, 1, 100) { |x| Math.exp(x) / (x + 1) }, 0.05
    assert_in_delta 0.66, intprg(0, 2, 100) { |x| x * (x - 1) }, 0.05
  end

  def test_intprg_with_block
    assert_in_delta 1.125, intprg(0, 1, 100) { |x| Math.exp(x) / (x + 1) }, 0.05
    assert_in_delta 0.666, intprg(0, 2, 100) { |x| x * (x - 1) }, 0.05
  end
end