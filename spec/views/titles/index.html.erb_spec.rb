require 'rails_helper'

RSpec.describe "titles/index", type: :view do
  before(:each) do
    assign(:titles, [
      Title.create!(
        :classification => "Classification",
        :description => "MyText",
        :owner => "Owner",
        :total_area => "9.99",
        :acquisition => "Acquisition",
        :status => "Status",
        :tax_dec_no => "Tax Dec No",
        :remarks => "MyText",
        :university => nil
      ),
      Title.create!(
        :classification => "Classification",
        :description => "MyText",
        :owner => "Owner",
        :total_area => "9.99",
        :acquisition => "Acquisition",
        :status => "Status",
        :tax_dec_no => "Tax Dec No",
        :remarks => "MyText",
        :university => nil
      )
    ])
  end

  it "renders a list of titles" do
    render
    assert_select "tr>td", :text => "Classification".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Acquisition".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Tax Dec No".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
