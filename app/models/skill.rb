class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized

  # after_initialize :set_defaults
end
