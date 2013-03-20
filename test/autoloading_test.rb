$: << 'lib'
require 'minitest/autorun'
require 'autoloading'

module A
  module B
    class AutoloadingTest < MiniTest::Unit::TestCase
      def test_autoloading
        C # trigger autoloading of C

        assert(A::WAS_LOADED)
        assert(A::B::WAS_LOADED)
      end
    end
  end
end