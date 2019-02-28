class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
=begin
, dependent: :destroy, if: ...
=end
  has_many :doses

  validates :name, uniqueness: true, presence: true
end
