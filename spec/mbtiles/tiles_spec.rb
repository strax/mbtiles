require "spec_helper"

describe MBTiles::Tileset do
  let(:tileset) { MBTiles::Tileset.new(fixture_tileset_path) }


  context "#tiles" do
    it "returns an enumerable object" do
      expect(tileset.tiles).to be_a(Enumerable)
    end

    it "returns hashes that contain :x, :y, :z and :data keys" do
      expect(tileset.tiles.first).to include(:x, :y, :z, :data)
    end
  end

  context "#tile_at" do
    it "returns a hash if the tile is found" do
      expect(tileset.tile_at(0,0,0)).to be_a(Hash)
    end

    it "returns a hash that contains :x, :y, :z and :data keys" do
      expect(tileset.tile_at(0,0,0)).to include(:x, :y, :z, :data)
    end

    it "returns nil if the tile was not found" do
      expect(tileset.tile_at(999,0,0)).to be_nil
    end
  end
end