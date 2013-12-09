require 'rubygems'
require 'bundler/setup'

require 'markdown_chapter_numbers' # and any other gems you need

RSpec.configure do |config|
  # some (optional) config here
end

def fixtures_path
  File.expand_path('../fixtures/', __FILE__)
end
