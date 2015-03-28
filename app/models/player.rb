class Player < ActiveRecord::Base
  delegate :name, to: :team, allow_nil: true, prefix: true
  belongs_to :team
end
