require 'rails_helper'

RSpec.describe "universities/index", type: :view do
  before(:each) do
    assign(:universities, [
      University.create!(
        :university_name => "University Name",
        :university_code => "University Code"
      ),
      University.create!(
        :university_name => "University Name",
        :university_code => "University Code"
      )
    ])
  end

  it "renders a list of universities" do
    render
    assert_select "tr>td", :text => "University Name".to_s, :count => 2
    assert_select "tr>td", :text => "University Code".to_s, :count => 2
  end
end
