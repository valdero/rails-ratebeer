class Brewery < ActiveRecord::Base
  include RatingAverage

  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  def print_report
    puts name
    puts "established at year #{year}"
    beers puts "number of beers #{beers.count}"
  end
  def restart
    self.year = 2017
    puts "changed year to #{self.year}"
  end
end
