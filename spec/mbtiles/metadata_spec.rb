require "spec_helper"

describe MBTiles::Tileset, "#metadata" do
  subject { MBTiles::Tileset.new(fixture_tileset_path).metadata }

  it { should be_a(Hash) }
  it { should include(version: "0.1.0", name: "plain", attribution: "attribution") }
end