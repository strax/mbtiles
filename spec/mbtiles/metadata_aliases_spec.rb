require "spec_helper"

describe MBTiles::Tileset, "metadata aliases" do
  let(:tileset) { MBTiles::Tileset.new(fixture_tileset_path) }
  let(:required_keys) { MBTiles::Tileset::REQUIRED_METADATA_KEYS }

  it "responds to required metadata keys" do
    expect(tileset).to respond_to(*required_keys)
  end

  it "maps shorthand metadata methods to their values" do
    expect(tileset.send(required_keys.first)).to eq(tileset.metadata[required_keys.first])
  end
end