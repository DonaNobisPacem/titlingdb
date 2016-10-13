class University < ActiveRecord::Base
	validates :university_name, presence: true, uniqueness: true
	validates :university_code, presence: true, uniqueness: true

	has_many :titles, dependent: :destroy, inverse_of: :university
  	accepts_nested_attributes_for :titles, allow_destroy: true, reject_if: :all_blank
end
