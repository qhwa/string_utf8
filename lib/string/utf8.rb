# encoding: utf-8

# This monkey patch add ability of turning stirng's
# encoding into utf8
#
# Example:
#
#   require 'string/utf8'
#   p "\xD6\xD0\xCE\xC4".utf8!
#   => "中文"
#
class String

  ENCODINGS = %w(ascii-8bit utf-8 ucs-bom shift-jis gb18030 gbk gb2312 cp936)

  # Try to turn a string's encoding to utf8
  #
  # Example:
  #   >> "中文"
  #   # => "中文"
  #
  #   >> "中文".encode('gb2312')
  #   # => "\x{D6D0}\x{CEC4}"
  #
  #   >> "中文".encode('gb2312').utf8!
  #   # => "中文"
  #

  if self.public_instance_methods.include?(:encode!)

    # for ruby1.9+
    def utf8!
      ENCODINGS.any? do |c|
        begin
          self.encode!('utf-8', c).force_encoding('utf-8')
          if self.valid_encoding?
            $enc = c
            true
          end
        rescue
        end
      end
      self
    end

  else
    # for ruby 1.8.7-
    require 'iconv'

    def utf8!
      ENCODINGS.any? do |c|
        begin
          converted = ::Iconv.conv('utf-8', c, self)
          # detect if UTF8 firendly
          if converted =~ /^.+$/
            $enc = c
            replace( converted )
            true
          end
        rescue
        end
      end
      self
    end
  end

end
