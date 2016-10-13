require 'rails_helper'

RSpec.describe "universities/show", type: :view do
  before(:each) do
    @university = assign(:university, University.create!(
      :university_name => "University Name",
      :university_code => "University Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/University Name/)
    expect(rendered).to match(/University Code/)
  end
end
