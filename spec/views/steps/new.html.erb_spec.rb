require 'rails_helper'

RSpec.describe "steps/new", type: :view do
  before(:each) do
    assign(:step, Step.new(
      :description => "MyText",
      :title => nil
    ))
  end

  it "renders new step form" do
    render

    assert_select "form[action=?][method=?]", steps_path, "post" do

      assert_select "textarea#step_description[name=?]", "step[description]"

      assert_select "input#step_title_id[name=?]", "step[title_id]"
    end
  end
end
