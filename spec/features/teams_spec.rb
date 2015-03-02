require 'rails_helper'

RSpec.describe "Teams", type: :request do
  describe "GET /teams/new" do
    it "Should have the form to create a new team" do
      visit new_team_path
      expect(page).to have_content("New Team")
      expect(page).to have_content("Name")
    end
  end
end
