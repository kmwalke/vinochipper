Gem::Specification.new do |gem|
  gem.name        = 'vinochipper'
  gem.version     = '0.0.5'
  gem.date        = '2020-08-15'
  gem.summary     = 'Interface for the VinoShipper API'
  gem.description = 'Interface for the VinoShipper API'
  gem.authors     = ['Kent Slaymaker']
  gem.email       = 'kent@slaymakercellars.com'
  gem.files       = [
    'lib/models/vcstate.rb',
    'lib/models/vcwine.rb',
    'lib/models/vcwinelist.rb',
    'lib/models/vcwinery.rb',
    'lib/models/vinochippermodel.rb',
    'lib/util/string.rb',
    'lib/vinochipper.rb',
  ]
  gem.homepage    =
    'https://rubygems.org/gems/vinochipper'
  gem.license       = 'MIT'
end