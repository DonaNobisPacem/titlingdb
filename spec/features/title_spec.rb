require 'rails_helper'

RSpec.feature "Titles", type: :feature do

  describe "GET /titles" do

    before(:each) do
      @university = FactoryGirl.create(:university)
      FactoryGirl.create(:title, classification: "Classification One", university: @university )
      FactoryGirl.create(:title, classification: "Classification Two", university: @university )
      Title.reindex
    end

    it "it has a list of titles" do
      visit titles_path
      expect(page).to have_content "Classification One"
      expect(page).to have_content "Classification Two"
    end

    context "search for a title" do

      it "it has a list of titles" do
      visit titles_path
      expect(page).to have_content "Classification One"
      expect(page).to have_content "Classification Two"
    end

      it "searches for a contract" do
        visit titles_path(:search => "One")
        # visit "/contracts?search=Valid"

        expect(page).to have_content "Classification One"
        expect(page).not_to have_content "Classification Two"
      end

    end
  end
end
