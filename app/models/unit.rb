class Unit < ActiveRecord::Base
  validates :number, :presence => true
  validates :title, :presence => true
  # validates :search, :presence => true

  def next
    Unit.order(:number).find_by(number: self.number + 1)
  end

  def previous
    Unit.order(:number).find_by(number: self.number - 1)
  end

  def self.search

  end
end
