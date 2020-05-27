# frozen_string_literal: true

guard :rspec, cmd: 'bundle exec rspec',
              spec_paths: %w[spec],
              all_on_start: true do
  require 'guard/rspec/dsl'
  dsl = Guard::RSpec::Dsl.new(self)

  # Feel free to open issues for suggestions and improvements

  # RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)

  # Ruby files
  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)
end

guard :rubocop, cli: %w[-a] do
  watch(/.+\.rb$/)
  watch(%r{(?:.+/)?\.rubocop(?:_todo)?\.yml$}) { |m| File.dirname(m[0]) }
end

# Add any file/pattern you want to have beautified beyond these.
guard :rubybeautify do
  watch(%r{lib/.+\.rb})
  watch('Gemfile')
  watch('%r{.+.gemspec}')
end
