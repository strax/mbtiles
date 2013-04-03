require "simplecov"
SimpleCov.start

require "rspec"
require "mbtiles"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.order = 'random'
end

def fixture_tileset_path
  File.join(File.dirname(__FILE__), "fixtures", "plain.mbtiles")
end