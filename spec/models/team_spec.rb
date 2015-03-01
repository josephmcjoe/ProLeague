require 'rails_helper'

RSpec.describe Team, type: :model do
  subject { Team.new }
  specify { subject.should respond_to(:name) }
end
