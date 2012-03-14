# -*- coding: UTF-8 -*-
require 'danske_helligdage'
require 'danske_helligdage/arbejdsdag'

class ArbejdsdageTests < Test::Unit::TestCase

  def test_should_return_next_working_day
    assert_equal Date.civil(2008, 5, 6), Date.civil(2008, 5, 5).arbejdsdag
  end

  def test_should_return_next_working_day_on_a_sunday
    assert_equal Date.civil(2008, 5, 5), Date.civil(2008, 5, 4).arbejdsdag
  end

  def test_should_return_next_working_day_on_a_saturday
    assert_equal Date.civil(2008, 5, 5), Date.civil(2008, 5, 3).arbejdsdag
  end

  def test_should_return_next_working_day_on_a_friday
    assert_equal Date.civil(2008, 5, 5), Date.civil(2008, 5, 2).arbejdsdag
  end

  def test_should_return_next_working_day_on_a_holiday
    assert_equal Date.civil(2008, 5, 2), Date.civil(2008, 5, 1).arbejdsdag
  end

  def test_should_return_next_working_day_before_a_holiday
    assert_equal Date.civil(2008, 5, 2), Date.civil(2008, 4, 30).arbejdsdag
  end

  def test_should_return_next_3_working_day_before_holiday_and_weekend
    assert_equal Date.civil(2008, 5, 6), Date.civil(2008, 4, 30).arbejdsdag(3)
  end
end
