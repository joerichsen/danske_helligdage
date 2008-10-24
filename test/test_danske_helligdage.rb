require 'danske_helligdage'

class DanskeHelligdageTests < Test::Unit::TestCase

  def test_should_return_the_name_of_the_holiday
    assert_equal 'Nytårsdag',             Date.civil(2008, 1, 1).helligdag
    assert_equal 'Skærtorsdag',           Date.civil(2008, 3, 20).helligdag
    assert_equal 'Langfredag',            Date.civil(2008, 3, 21).helligdag
    assert_equal 'Påskedag',              Date.civil(2008, 3, 23).helligdag
    assert_equal '2. påskedag',           Date.civil(2008, 3, 24).helligdag
    assert_equal 'Store Bededag',         Date.civil(2008, 4, 18).helligdag
    assert_equal 'Kristi himmelfartsdag', Date.civil(2008, 5, 1).helligdag
    assert_equal 'Pinsedag',              Date.civil(2008, 5, 11).helligdag
    assert_equal '2. pinsedag',           Date.civil(2008, 5, 12).helligdag
    assert_equal '1. juledag',            Date.civil(2008, 12, 25).helligdag
    assert_equal '2. juledag',            Date.civil(2008, 12, 26).helligdag
  end
  
  def test_should_return_nil_for_non_holidays
    assert_nil Date.civil(2008, 1, 2).helligdag
  end

  def test_should_return_whether_it_is_a_holiday_or_not
    assert  Date.civil(2008, 1, 1).helligdag?
    assert  Date.civil(2008, 3, 20).helligdag?
    assert  Date.civil(2008, 3, 21).helligdag?
    assert  Date.civil(2008, 3, 23).helligdag?
    assert  Date.civil(2008, 3, 24).helligdag?
    assert  Date.civil(2008, 4, 18).helligdag?
    assert  Date.civil(2008, 5, 1).helligdag?
    assert  Date.civil(2008, 5, 11).helligdag?
    assert  Date.civil(2008, 5, 12).helligdag?
    assert  Date.civil(2008, 12, 25).helligdag?
    assert  Date.civil(2008, 12, 26).helligdag?
    assert !Date.civil(2008, 1, 2).helligdag?
  end
  
  def test_should_return_whether_is_is_a_weekend_or_not
    assert !Date.civil(2008, 10, 24).weekend?
    assert  Date.civil(2008, 10, 25).weekend?
    assert  Date.civil(2008, 10, 26).weekend?
    assert !Date.civil(2008, 10, 27).weekend?
  end

  def test_should_return_whether_it_is_a_working_day_or_not
    assert  Date.civil(2008, 10, 24).arbejdsdag?
    assert !Date.civil(2008, 10, 25).arbejdsdag?
    assert !Date.civil(2008, 10, 26).arbejdsdag?
    assert  Date.civil(2008, 10, 27).arbejdsdag?
    assert !Date.civil(2008, 12, 26).arbejdsdag?
    assert !Date.civil(2008, 12, 27).arbejdsdag?
  end
  
  def test_should_return_the_number_of_working_days_for_a_given_month
    assert_equal 22, Date.arbejdsdage(2008, 1)
  end

  def test_should_return_the_number_of_working_days_for_a_given_period
    assert_equal 252, Date.arbejdsdage_i_periode(Date.civil(2008, 1, 1), Date.civil(2008, 12, 31))
  end

end