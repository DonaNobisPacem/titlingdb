class Step < ActiveRecord::Base
  belongs_to :title, inverse_of: :steps
  validates :title, presence: true

  validates :date_start, presence: true
  validates :description, presence: true
end
