require 'gem2deb/rake/spectask'

Gem2Deb::Rake::RSpecTask.new do |spec|
  spec.pattern = './spec/**/*_spec.rb'
  spec.exclude_pattern = './spec/project/{project_requires_spec.rb,default_config_spec.rb}' if ENV['AUTOPKGTEST_TMP']
end
