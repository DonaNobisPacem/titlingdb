require 'rails_helper'

RSpec.describe "titles/new", type: :view do
  before(:each) do
    assign(:title, Title.new(
      :classification => "MyString",
      :description => "MyText",
      :owner => "MyString",
      :total_area => "9.99",
      :acquisition => "MyString",
      :status => "MyString",
      :tax_dec_no => "MyString",
      :remarks => "MyText",
      :university => nil
    ))
  end

  it "renders new title form" do
    render

    assert_select "form[action=?][method=?]", titles_path, "post" do

      assert_select "input#title_classification[name=?]", "title[classification]"

      assert_select "textarea#title_description[name=?]", "title[description]"

      assert_select "input#title_owner[name=?]", "title[owner]"

      assert_select "input#title_total_area[name=?]", "title[total_area]"

      assert_select "input#title_acquisition[name=?]", "title[acquisition]"

      assert_select "input#title_status[name=?]", "title[status]"

      assert_select "input#title_tax_dec_no[name=?]", "title[tax_dec_no]"

      assert_select "textarea#title_remarks[name=?]", "title[remarks]"

      assert_select "input#title_university_id[name=?]", "title[university_id]"
    end
  end
end
