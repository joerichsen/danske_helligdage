require 'danske_helligdage'

class JuleaftensdagTests < Test::Unit::TestCase

  def setup
    require 'danske_helligdage/juleaftensdag'
  end

  def teardown
    # Restore the original Date class
    Date.send(:include, DanskeHelligdage::Officielle)
  end

  def test_should_return_the_name_of_the_holiday
    assert_equal 'Juleaftensdag', Date.civil(2008, 12, 24).helligdag
  end
  
end
