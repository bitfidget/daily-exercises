require 'spec_helper'

describe Cell do
  context "8 dead neighbours" do
    let(:cell) do
      cell = Cell.new(true)
      cell.neighbours = [Cell.dead] * 8
      cell

    end
    specify { expect(cell.next_state).to eq(false) }
  end

  context "7 dead neighbours" do
    let(:cell) do
      cell = Cell.new(true)
      cell.neighbours = ([Cell.dead] * 7) + [Cell.alive]
      cell

    end
    specify { expect(cell.next_state).to eq(false) }
  end

  context "6 dead neighbours - 2 alive" do
    let(:cell) do
      cell = Cell.new(true)
      cell.neighbours = ([Cell.dead] * 6) + ([Cell.alive] * 2)
      cell

    end
    specify { expect(cell.next_state).to eq(true) }
  end

  context "5 dead neighbours - 3 alive" do
    let(:cell) do
      cell = Cell.new(true)
      cell.neighbours = ([Cell.dead] * 5) + ([Cell.alive] * 3)
      cell

    end
    specify { expect(cell.next_state).to eq(true) }
  end

  context "4 dead neighbours - 4 alive" do
    let(:cell) do
      cell = Cell.new(true)
      cell.neighbours = ([Cell.dead] * 4) + ([Cell.alive] * 4)
      cell

    end
    specify { expect(cell.next_state).to eq(false) }
  end

  context "dead cell with exactly 3 live neighbours" do
    let(:cell) do
      cell = Cell.new(false)
      cell.neighbours = ([Cell.dead] * 5) + ([Cell.alive] * 3)
      cell

    end
    specify { expect(cell.next_state).to eq(true) }
  end

end