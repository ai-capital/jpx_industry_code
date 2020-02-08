# frozen_string_literal: true

$:.push File.expand_path("../lib", __FILE__)
require 'jpx_industry_code/version'

Gem::Specification.new do |s|
  s.name        = 'jpx_industry_code'
  s.version     = JpxIndustryCode::VERSION
  s.date        = '2020-02-07'
  s.summary     = "JPX industry code gem"
  s.description = "JPX industry code and category gem"
  s.authors     = ["Rui Onodera"]
  s.email       = 'deraru@gmail.com'
  s.files       = [
    "lib/jpx_industry_code.rb",
    "lib/jpx_industry_code/category.rb",
    "lib/jpx_industry_code/errors.rb"
  ]
  s.homepage    = 'https://github.com/ai-capital/jpx_industry_code'
  s.license     = 'MIT'

   s.add_development_dependency 'rspec', '~> 3.9'
   s.add_development_dependency 'pry-byebug', '~> 3.8'
end
