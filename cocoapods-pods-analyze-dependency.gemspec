# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-pods-analyze-dependency/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-pods-analyze-dependency'
  spec.version       = CocoapodsPodsAnalyzeDependency::VERSION
  spec.authors       = ['Anyeler']
  spec.email         = ['414116969@qq.com']
  spec.description   = %q{A short description of cocoapods-pods-analyze-dependency.}
  spec.summary       = %q{A longer description of cocoapods-pods-analyze-dependency.}
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-pods-analyze-dependency'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
