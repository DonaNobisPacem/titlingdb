FactoryGirl.define do
  factory :step do
    date_start DateTime.now
	description { FFaker::BaconIpsum.paragraph }
	title
  end
end
