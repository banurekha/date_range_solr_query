# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_range_solr_query/version'

Gem::Specification.new do |spec|
  spec.name          = "date_range_solr_query"
  spec.version       = DateRangeSolrQuery::VERSION
  spec.authors       = ["Jessie Keck"]
  spec.email         = ["jessie.keck@gmail.com"]
  spec.description   = %q{Generates a date range query to send to Solr.}
  spec.summary       = %q{Given a start date, end date, and solr field this gem will return a string that can be sent to Solr as a range query.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "activesupport"
  spec.add_dependency "i18n"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
