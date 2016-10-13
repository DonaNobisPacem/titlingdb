require 'rails_helper'

RSpec.describe "universities/new", type: :view do
  before(:each) do
    assign(:university, University.new(
      :university_name => "MyString",
      :university_code => "MyString"
    ))
  end

  it "renders new university form" do
    render

    assert_select "form[action=?][method=?]", universities_path, "post" do

      assert_select "input#university_university_name[name=?]", "university[university_name]"

      assert_select "input#university_university_code[name=?]", "university[university_code]"
    end
  end
end
