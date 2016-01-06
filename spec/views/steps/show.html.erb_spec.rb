require 'rails_helper'

RSpec.describe "steps/show", type: :view do
  before(:each) do
    @step = assign(:step, Step.create!(
      :description => "MyText",
      :title => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
