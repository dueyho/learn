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
end
