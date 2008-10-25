Gem::Specification.new do |s|
  s.name = %q{danske_helligdage}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["J\303\270rgen Oreh\303\270j Erichsen"]
  s.date = %q{2008-10-24}
  s.description = %q{Add support for public holidays in Denmark in the Date class}
  s.email = ["joe@erichsen.net"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/danske_helligdage", "lib/danske_helligdage.rb", "test/test_danske_helligdage.rb", "test/test_foerste_maj.rb", "test/test_grundlovsdag.rb", "test/test_juleaftensdag.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/joerichsen/danske_helligdage/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{danskehelligdage}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Add support for public holidays in Denmark in the Date class}
  s.test_files = ["test/test_danske_helligdage.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.8.1"])
    else
      s.add_dependency(%q<hoe>, [">= 1.8.1"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.8.1"])
  end
end
