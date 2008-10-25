Gem::Specification.new do |s|
  s.name = %q{danske_helligdage}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["J\303\270rgen Oreh\303\270j Erichsen"]
  s.date = %q{2008-10-25}
  s.description = %q{Add support for public holidays in Denmark in the Date class}
  s.email = ["joe@erichsen.net"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/danske_helligdage.rb", "lib/danske_helligdage/officielle.rb", "lib/danske_helligdage/grundlovsdag.rb", "lib/danske_helligdage/juleaftensdag.rb", "lib/danske_helligdage/foerste_maj.rb", "test/test_danske_helligdage.rb", "test/test_foerste_maj.rb", "test/test_grundlovsdag.rb", "test/test_juleaftensdag.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/joerichsen/danske_helligdage/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{danskehelligdage}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Add support for public holidays in Denmark in the Date class}
  s.test_files = ["test/test_danske_helligdage.rb", "test/test_foerste_maj.rb", "test/test_grundlovsdag.rb", "test/test_juleaftensdag.rb"]
end
