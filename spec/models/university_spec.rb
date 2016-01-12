require 'rails_helper'

RSpec.describe University, type: :model do
  it "has a valid factory" do
  	expect( FactoryGirl.build(:university) ).to be_valid
  end

  describe "ActiveModel Validations" do
  	it { should validate_presence_of(:university_name) }
  	it { should validate_presence_of(:university_code) }

  	it { should validate_uniqueness_of(:university_name) }
  	it { should validate_uniqueness_of(:university_code) }
  end

  describe "ActiveRecord Validations" do
  	it { should have_many(:titles) }
  	it { should accept_nested_attributes_for(:titles).allow_destroy(true) }
  end
end
