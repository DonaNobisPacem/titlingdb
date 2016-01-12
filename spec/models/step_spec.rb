require 'rails_helper'

RSpec.describe Step, type: :model do
  it "has a valid factory" do
  	expect( FactoryGirl.build(:step) ).to be_valid
  end

  describe "ActiveModel Validations" do
  	it { should validate_presence_of(:date_start) }
  	it { should validate_presence_of(:description) }
  end

  describe "ActiveRecord Validations" do
  	it { should belong_to(:title) }
  	it { should validate_presence_of(:title) }
  end
end
