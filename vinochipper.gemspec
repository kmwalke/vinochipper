Gem::Specification.new do |gem|
  gem.name        = 'vinochipper'
  gem.version     = '0.0.1'
  gem.date        = '2020-08-11'
  gem.summary     = 'Interface for the VinoShipper API'
  gem.description = 'Interface for the VinoShipper API'
  gem.authors     = ['Kent Slaymaker']
  gem.email       = 'kent@slaymakercellars.com'
  gem.files       = [
    'lib/models/state.rb',
    'lib/models/vinochippermodel.rb',
    'lib/models/wine.rb',
    'lib/models/winelist.rb',
    'lib/models/winery.rb',
    'lib/util/string.rb',
    'lib/vinochipper.rb',
  ]
  gem.homepage    =
    'https://rubygems.org/gems/vinochipper'
  gem.license       = 'MIT'
end