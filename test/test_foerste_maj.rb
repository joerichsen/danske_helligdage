require 'danske_helligdage'

class FoersteMajTests < Test::Unit::TestCase

  def setup
    require 'danske_helligdage/foerste_maj'
  end

  def teardown
    # Restore the original Date class
    Date.send(:include, DanskeHelligdage::Officielle)
  end

  def test_should_return_the_name_of_the_holiday
    assert_equal '1. maj', Date.civil(2008, 5, 1).helligdag
  end
  
end
