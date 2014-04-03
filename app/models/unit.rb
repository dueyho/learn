class Unit < ActiveRecord::Base
  validates :number, :presence => true
  validates :title, :presence => true

  def next
    Unit.order(:number).find_by(number: self.number + 1)
  end

  def previous
    Unit.order(:number).find_by(number: self.number - 1)
  end

  def self.search(input)
    if input
      Unit.find(:all, :conditions => ['title LIKE ?', "%#{input}%"])
      # Unit.find_all_by_title("%#{input}%")
    else
      Unit.find(:all)
    end
  end
end
