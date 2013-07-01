# encoding: utf-8
unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.expand_path(path.to_str, File.dirname(caller[0]))
    end
  end
end

require 'test/unit'
require_relative '../lib/string/utf8'

class StringUt8Test < Test::Unit::TestCase

  def test_simplified_chinese_char
    assert_equal "简体中文", "\xBC\xF2\xCC\xE5\xD6\xD0\xCE\xC4".utf8!
    assert_equal 'gb18030', $enc
  end

  def test_tranditional_chinese_char
    assert_equal "民眾", "\xC3\xF1\xB1\x8A".utf8!
    assert_equal 'gb18030', $enc
  end

end
