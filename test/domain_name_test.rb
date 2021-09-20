require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require 'json'
require_relative '../lib/domain_name'

class DomainNameTest < MiniTest::Test
    def setup
        @name = DomainName.new
    end

    def test_it_gets_domain_name
        assert_equal "google", @name.domain_name("http://google.com")
        assert_equal "google", @name.domain_name("http://google.co.jp")
        assert_equal "xakep", @name.domain_name("www.xakep.ru")
        assert_equal "youtube", @name.domain_name("https://youtube.com")
        assert_equal "hyphen-site", @name.domain_name("https://hyphen-site.org")
        assert_equal "codewars", @name.domain_name("http://www.codewars.com/kata/")
    end
end