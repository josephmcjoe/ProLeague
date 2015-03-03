require 'rails_helper'

RSpec.describe "Teams", type: :request do
  describe "GET /teams/new" do
    it "Should have the form to create a new team" do
      visit new_team_path
      expect(page).to have_content("New Team")
      expect(page).to have_content("Name")
      page.fill_in "Name", :with => "CJ Entus"
      click_button "Create Team"
      expect(page).to have_content("All Teams")
      expect(page).to have_content("Team Name")
      expect(page).to have_content("CJ Entus")
    end
  end
end
