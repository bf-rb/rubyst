
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyst/version'

Gem::Specification.new do |spec|
  spec.name = 'rubyst'
  spec.version = Rubyst::VERSION
  spec.authors = ['alex']
  spec.email = ['rormercury@gmail.com']
  spec.license = 'MIT'
  spec.summary = 'Test case'
  spec.description = <<-DESCRIPTION
    Test case
  DESCRIPTION
  spec.homepage = 'https://github.com/itbeast/rubyst'

  if spec.respond_to?(:metadata=)
    spec.metadata = {
      'homepage_uri' => 'https://github.com/itbeast/rubyst',
      # changelog_uri source_code_uri documentation_uri bug_tracker_uri
    }
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'bin'
  spec.executables = ['rubyst']
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop', '~> 0.51.0'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
