# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "string_utf8"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["qhwa"]
  s.date = "2013-09-26"
  s.email = "qhwa@163.com"
  s.executables = ["string_utf8"]
  s.extra_rdoc_files = ["README.md"]
  s.files = ["README.md", "Rakefile", "string_utf8.gemspec", "Gemfile", "README.rdoc", "string_utf8.rdoc", "bin/string_utf8", "test/tc_string_utf8.rb", "lib/string", "lib/string/utf8.rb"]
  s.homepage = "https://github.com/qhwa/string_utf8"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Convert a string's encoding to utf8, whithout caring which encoding used before converting."
end
