class Ingredient < ApplicationRecord
  belongs_to :recipe
  has_many :directions, dependent: :destroy

  accepts_nested_attributes_for :directions, reject_if: proc { |attributes| attributes['step'].blank? }, allow_destroy: true
end
