lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/provisioner/pre_install_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-provisioner-pre-install'
  spec.version       = Kitchen::Provisioner::PRE_INSTALL_VERSION
  spec.authors       = ['Andy Brody']
  spec.email         = ['git@abrody.com']
  spec.description   = 'Test kitchen provisioners that support pre_install_command config'
  spec.summary       = spec.description
  spec.homepage      = ''
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'test-kitchen', '~> 1.20'

  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '~> 0.45'
end
