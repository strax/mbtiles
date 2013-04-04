require "sequel"

class MBTiles::Tileset
  REQUIRED_METADATA_KEYS = [:name, :type, :version, :description, :format]

  REQUIRED_METADATA_KEYS.each do |key|
    define_method(key) { metadata[key] }
  end

  def initialize(path)
    @path = path.is_a?(Pathname) ? path : Pathname.new(path.to_s)
  end

  def metadata
    @metadata ||= database[:metadata].to_hash(:name, :value).symbolize_keys
  end

  def tiles
    database[:tiles].select(:zoom_level => :z, :tile_column => :x, :tile_row => :y, :tile_data => :data)
  end

  def tile_at(x, y, z)
    tiles.where(x: x, y: y, z: z).first
  end

  def load!
    database && self
  end

  def loaded?
    @database.present?
  end

  private

  def database
    @database ||= Sequel.connect(connection_string)
  end

  def connection_string
    "sqlite://" << @path.realpath.to_s
  end
end