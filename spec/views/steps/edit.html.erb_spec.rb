require 'rails_helper'

RSpec.describe "steps/edit", type: :view do
  before(:each) do
    @step = assign(:step, Step.create!(
      :description => "MyText",
      :title => nil
    ))
  end

  it "renders the edit step form" do
    render

    assert_select "form[action=?][method=?]", step_path(@step), "post" do

      assert_select "textarea#step_description[name=?]", "step[description]"

      assert_select "input#step_title_id[name=?]", "step[title_id]"
    end
  end
end
