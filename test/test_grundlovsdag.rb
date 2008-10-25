require 'danske_helligdage'

class GrundlovsdagTests < Test::Unit::TestCase

  def setup
    require 'danske_helligdage/grundlovsdag'
  end

  def teardown
    # Restore the original Date class
    Date.send(:include, DanskeHelligdage::Officielle)
  end

  def test_should_return_the_name_of_the_holiday
    assert_equal 'Grundlovsdag', Date.civil(2008, 6, 5).helligdag
  end
  
end
