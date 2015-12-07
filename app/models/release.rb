class Release < ActiveRecord::Base
  validates :version, :project, presence: true
end
