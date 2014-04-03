require 'spec_helper'

describe Unit do
  it { should validate_presence_of :number }
  it { should validate_presence_of :title }

  context '#next' do
    it 'returns the unit with the next-highest number than the current unit' do
      current_unit = Unit.create({title: 'unit1', number: 1})
      next_unit = Unit.create({title: 'unit2', number: 2})
      current_unit.next.should eq next_unit
    end
  end

  context '#previous' do
    it 'returns the unit previous to the current unit' do
      current_unit = Unit.create({title: 'unit2', number: 2})
      previous_unit = Unit.create({title: 'unit1', number: 1})
      current_unit.previous.should eq previous_unit
    end
  end

  context '.search' do
    it 'searches through the all of the titles and shows which titles contain the inputted text' do
      unit1 = Unit.create({title: 'intro', number: 2})
      unit2 = Unit.create({title: 'Second intro', number: 1})
      Unit.search('intro').should eq [unit1, unit2]
    end
  end
end
