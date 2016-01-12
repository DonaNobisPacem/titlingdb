require 'rails_helper'

RSpec.describe Title, type: :model do
  it "has a valid factory" do
  	expect( FactoryGirl.build(:title) ).to be_valid
  end

  describe "ActiveModel Validations" do
    it "should not be valid if all attributes are blank" do
      expect( FactoryGirl.build(:title, classification: "", description: "", owner: "", total_area: "", acquisition: "", status: "", date_issued: "", tax_dec_no: "", remarks: "") ).not_to be_valid
    end
  end

  describe "ActiveRecord Validations" do
  	it { should belong_to(:university) }
  	it { should validate_presence_of(:university) }

  	it { should have_many(:steps) }
  	it { should accept_nested_attributes_for(:steps).allow_destroy(true) }
  end

  describe "Custom Methods" do
    it "returns total_area when area_in_sqm is called" do
      title = FactoryGirl.build(:title, total_area: 100)
      expect( title.area_in_sqm ).to eq(title.total_area)
    end

    it "returns converted area when area_in_hectares is called" do
      title = FactoryGirl.build(:title, total_area: 100)
      expect( title.area_in_hectares ).to eq(title.total_area/10000.00)
    end

    it "returns parent university's name with university_name" do
      university = FactoryGirl.create(:university)
      title = FactoryGirl.build(:title, total_area: 100, university_id: university.id )
      expect( title.university_name ).to eq( university.university_name )
    end
  end
end