class Release < ActiveRecord::Base
  validates :version, :project, :project_url, :release_date_time, :release_url,
    :ysi_config_url, presence: true

  validate :release_date_time_cannot_be_in_the_future

  def release_date_time_cannot_be_in_the_future
    if release_date_time.present? && release_date_time > Time.now
      errors.add(:release_date_time, "can't be in the future")
    end
  end
end
