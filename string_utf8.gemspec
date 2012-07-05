# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','string_utf8_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'string_utf8'
  s.version = StringUtf8::VERSION
  s.author = 'qhwa'
  s.email = 'qhwa@163.com'
  s.homepage = 'http://q.pnq.cc'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Convert strings encoding to utf8'
# Add your other files here if you make them
  s.files = %w(
    lib/string_utf8_version.rb
    lib/string/utf8
  )

  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','string_utf8.rdoc']
  s.rdoc_options << '--title' << 'string_utf8' << '--main' << 'README.rdoc' << '-ri'
end
