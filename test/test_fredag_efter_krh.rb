require 'test/unit'
require 'danske_helligdage'

class FredagEfterKrhTests < Test::Unit::TestCase

  def setup
    require 'danske_helligdage/fredag_efter_krh'
  end

  def teardown
    # Restore the original Date class
    Date.send(:include, DanskeHelligdage::Officielle)
  end

  def test_should_return_the_name_of_the_holiday
    assert_equal 'Fredag e. Kristi himmelfartsdag', Date.civil(2008, 5, 2).helligdag
  end

end
