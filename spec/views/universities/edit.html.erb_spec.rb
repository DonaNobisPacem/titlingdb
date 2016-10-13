require 'rails_helper'

RSpec.describe "universities/edit", type: :view do
  before(:each) do
    @university = assign(:university, University.create!(
      :university_name => "MyString",
      :university_code => "MyString"
    ))
  end

  it "renders the edit university form" do
    render

    assert_select "form[action=?][method=?]", university_path(@university), "post" do

      assert_select "input#university_university_name[name=?]", "university[university_name]"

      assert_select "input#university_university_code[name=?]", "university[university_code]"
    end
  end
end
