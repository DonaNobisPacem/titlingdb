require 'rails_helper'

RSpec.describe "titles/show", type: :view do
  before(:each) do
    @title = assign(:title, Title.create!(
      :classification => "Classification",
      :description => "MyText",
      :owner => "Owner",
      :total_area => "9.99",
      :acquisition => "Acquisition",
      :status => "Status",
      :tax_dec_no => "Tax Dec No",
      :remarks => "MyText",
      :university => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Classification/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Acquisition/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Tax Dec No/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
