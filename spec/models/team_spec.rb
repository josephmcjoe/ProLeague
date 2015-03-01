require 'rails_helper'

RSpec.describe Team, type: :model do
  subject { Team.new }
  specify { expect(subject).to respond_to(:name) }
end
