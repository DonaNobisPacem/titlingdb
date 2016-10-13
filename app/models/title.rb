class Title < ActiveRecord::Base
  belongs_to :university, inverse_of: :titles
  validates :university, presence: true

  has_many :steps, dependent: :destroy, inverse_of: :title
  accepts_nested_attributes_for :steps, allow_destroy: true

  validate :check_all_blank

  searchkick

  def area_in_sqm
    total_area
  end

  def area_in_hectares
    total_area/10000.00 if total_area.present?
  end

  def university_name
    university.university_name
  end

  private
  	def check_all_blank
  		if university.present?
  			errors[:base] << "This entry cannot be completely blank!" if classification.blank? && description.blank? && owner.blank? && total_area.blank? && acquisition.blank? && status.blank? && date_issued.blank? && tax_dec_no.blank? && remarks.empty?		
  		end
  	end
end