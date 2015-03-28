require 'rails_helper'

RSpec.describe "players", type: :request do
  let!(:team) { Team.create(name: "CJ Entus")}
  describe "GET /teams/new" do
    it "Should be able to create and view players" do
      visit players_path
      click_button "New Player"
      expect(page).to have_content("New Player")
      expect(page).to have_content("Name")
      expect(page).to have_content("Team")
      fill_in "Name", :with => "Savior"
      select "CJ Entus", :from => "player_team_id"
      click_button "Create Player"
      expect(page).to have_content("All Players")
      expect(page).to have_content("Team Name")
      expect(page).to have_content("CJ Entus")
      expect(page).to have_content("Player Name")
      expect(page).to have_content("Savior")
    end
  end
end
