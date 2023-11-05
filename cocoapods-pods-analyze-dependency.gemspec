# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-pods-analyze-dependency/gem_version'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-pods-analyze-dependency'
  spec.version       = CocoapodsPodsAnalyzeDependency::VERSION
  spec.authors       = ['Anyeler']
  spec.email         = ['414116969@qq.com']
  spec.description   = 'Parse the dependency relationship of the podfile'
  spec.summary       = 'Parse the dependency relationship of the podfile'
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-pods-analyze-dependency'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split('$/')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
