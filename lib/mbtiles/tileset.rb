require "sequel"

class MBTiles::Tileset
  def initialize(path)
    @path = path.is_a?(Pathname) ? path : Pathname.new(path.to_s)
  end

  def metadata
    database[:metadata].to_hash(:name, :value).symbolize_keys
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