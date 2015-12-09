require 'rails_helper'

RSpec.describe Release, type: :model do
  it "fails when empty" do
    expect {
      Release.create!
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  it "fails when the release date is in the future" do
    expect {
      Release.create!(
        version: "0.1.0",
        project: "Dummy",
        project_url: "https://example.com/dummy",
        release_date_time: Time.now + 1.days,
        release_url: "https://example.com/dummy/v0.1.0",
        ysi_config_url: "https://example.com/dummy/yes_ship_it.conf"
       )
    }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
