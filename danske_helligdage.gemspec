# -*- ruby coding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

require "danske_helligdage/version"

Gem::Specification.new do |s|
  s.name = %q{danske_helligdage}
  s.version = DanskeHelligdage::VERSION
  s.date = %q{2012-03-14}
  s.authors = ["J\303\270rgen Oreh\303\270j Erichsen"]
  s.email = ["joe@erichsen.net"]
  s.homepage = %q{http://github.com/joerichsen/danske_helligdage/}
  s.description = %q{Add support for public holidays in Denmark in the Date class}
  s.summary = %q{Add support for public holidays in Denmark in the Date class}

  s.extra_rdoc_files = ["History.txt", "README.rdoc"]
  s.files = Dir["{app,config,db,lib}/**/*"] + ["History.txt", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "rake"
end
