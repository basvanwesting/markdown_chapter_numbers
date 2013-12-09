# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markdown_chapter_numbers/version'
require 'markdown_chapter_numbers/update'

Gem::Specification.new do |spec|
  spec.name          = "markdown_chapter_numbers"
  spec.version       = MarkdownChapterNumbers::VERSION
  spec.authors       = ["basvanwesting"]
  spec.email         = ["basvanwesting@gmail.com"]
  spec.description   = %q{Adds or updates chapter numbers to markdown file}
  spec.summary       = %q{Adds or updates chapter numbers to markdown file}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
