class Recipe < ActiveRecord::Base
	has_attached_file :image, styles: { :medium => "400x400#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	has_many :ingredients, dependent: :destroy
	validates :title, :description, :image, presence: true
	accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }, allow_destroy: true
end