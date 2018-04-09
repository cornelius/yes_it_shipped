FactoryBot.define do
  factory :release do
    project "dummy"
    version "1.0"
    release_date_time "20151207T1739"
    project_url "https://example.com/dummy"
    release_url "https://example.com/dummy/1.0"
    ysi_config_url "https://example.com/dummy/yes_ship_it.conf"
  end
end
