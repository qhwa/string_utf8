# encoding: utf-8
require 'test/unit'
require_relative '../lib/string/utf8'

class StringUt8Test < Test::Unit::TestCase

  def test_chinese_char
    assert_equal "中文", "\xD6\xD0\xCE\xC4".utf8!
    assert_equal 'gb18030', $enc
  end

end
