class Release < ActiveRecord::Base
  validates :version, :project, :project_url, :release_date_time, :release_url,
    :ysi_config_url, presence: true
end
