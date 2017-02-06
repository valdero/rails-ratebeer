class Beer < ActiveRecord::Base
  include RatingAverage

  belongs_to :brewery
  has_many :ratings, dependent: :destroy
  has_many :raters, through: :ratings, source: :user

  def to_s
    self.name + " (" + self.brewery.name + ")"
  end
end
