string_utf8
===========

turn ruby strings encoding to unicode (utf-8) from any other

## install

    gem install string_utf8

## usage

~~~ruby
require "string/utf8"

str = read_string_from_somewhere
# =>  "\xD6\xD0\xCE\xC4"

str.utf8!
# => "中文"

p $enc
# => "gb18030"
~~~

## tech detail

This gem adds a monkey patch to String class, adding a method naming 'utf8!'.

It guesses what encoding the string is using, and force it to use utf-8 encoding.

You can get what former encoding the string is using by checking `$enc`
