require 'spec_helper'

describe Grid do
  context "setup neighbour relations" do
    let(:grid) { Grid.new(3, 3) }
    subject(:cells) { grid.cells }

    specify { expect(cells.length).to eq(3) }
    specify { expect(cells[0].length).to eq(3) }
    specify { expect(cells[1].length).to eq(3) }
    specify { expect(cells[2].length).to eq(3) }

    subject(:neighbours) { cells[1][1].neighbours }
    specify { expect(neighbours[0]).to eq(cells[0][0]) }
    specify { expect(neighbours[1]).to eq(cells[0][1]) }
    specify { expect(neighbours[2]).to eq(cells[0][2]) }
    specify { expect(neighbours[3]).to eq(cells[1][0]) }
    specify { expect(neighbours[4]).to eq(cells[1][2]) }
    specify { expect(neighbours[5]).to eq(cells[2][0]) }
    specify { expect(neighbours[6]).to eq(cells[2][1]) }
    specify { expect(neighbours[7]).to eq(cells[2][2]) }
  end
end