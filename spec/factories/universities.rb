FactoryGirl.define do
  factory :university do
    university_name { FFaker::Education.school }
	university_code { FFaker::Currency.code }
  end
end
