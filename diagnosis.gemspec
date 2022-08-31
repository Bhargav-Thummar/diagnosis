Gem::Specification.new do |spec|
  spec.name        = 'diagnosis'
  spec.version     = '1.0.0'
  spec.summary     = "Application diagnosis tool"
  spec.description = "This GEM diagnose entire application. It expose vulnerabilities and suggest improvements."
  spec.authors     = ["Bhargav Thummar"]
  spec.email       = ["bhargav@thummar.com"]
  spec.homepage    = 'https://rubygems.org/gems/diagnosis'
  spec.license     = 'MIT'

  spec.add_runtime_dependency 'rack', '~> 2.0', '>= 2.2.0'
  spec.add_dependency 'traceroute', '~> 0.8', '>= 0.8.0'
  spec.add_dependency 'pry', '~> 0.13', '>= 0.10.0'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{lib}/**/*"]
  end
end
