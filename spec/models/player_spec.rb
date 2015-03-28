require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:team) { Team.create(name: "Team Name")}
  subject { Player.new(name: "Player Name", team_id: team.id) }

  specify { expect(subject.name).to eql "Player Name" }
  specify { expect(subject.team_name).to eql "Team Name" }
end
