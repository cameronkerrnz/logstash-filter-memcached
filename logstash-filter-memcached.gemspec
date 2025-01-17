Gem::Specification.new do |s|
  s.name          = 'logstash-filter-memcached'
  s.version       = '1.2.0'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'A Logstash filter plugin for interacting with memcached'
  s.authors       = ["Elastic"]
  s.email         = 'info@elastic.co'
  s.homepage      = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency "dalli", "~> 2.7"
  s.add_runtime_dependency 'lru_redux', "~> 1.1.0"
  s.add_development_dependency 'logstash-devutils'
end
