# MBTiles [![Build Status](https://travis-ci.org/strax/mbtiles.png)](https://travis-ci.org/strax/mbtiles) [![Coverage Status](https://coveralls.io/repos/strax/mbtiles/badge.png?branch=master)](https://coveralls.io/r/strax/mbtiles) [![Code Climate](https://codeclimate.com/github/strax/mbtiles.png)](https://codeclimate.com/github/strax/mbtiles)

Utilities for [MBTiles](https://github.com/mapbox/mbtiles-spec) tilesets.

## Installation

Add this line to your application's Gemfile:

    gem 'mbtiles'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mbtiles

## Usage

```ruby
require "mbtiles"
tileset = MBTiles::Tileset.new("path_to_tileset.mbtiles")

# Access metadata as a Hash
tileset.metadata[:version]
# or using a shorthand syntax
tileset.version
# Enumerate through tiles
tileset.tiles.each do |tile|
  # Do something with tile
end
# or access a specific tile (e.g. for rendering)
tileset.tile_at(x, y, z)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
