require "spec_helper"

describe MBTiles::Tileset do
  let(:tileset) { MBTiles::Tileset.new(fixture_tileset_path) }
  let(:invalid_tileset) { MBTiles::Tileset.new("foobar") }

  it 'lazy loads the database' do
    expect { invalid_tileset }.not_to raise_error
  end

  context '#load!' do
    it 'throws if the file is not found' do
      expect { invalid_tileset.load! }.to raise_error
    end

    it 'returns self if connected' do
      expect(tileset.load!).to eq(tileset)
    end
  end

  context '#loaded?' do
    it 'returns false if not connected' do
      expect(tileset.loaded?).to be_false
    end

    it 'returns true if connected' do
      expect(tileset.load!.loaded?).to be_true
    end
  end
end