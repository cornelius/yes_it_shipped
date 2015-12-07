require 'rails_helper'

RSpec.describe Release, type: :model do
  it "fails when empty" do
    expect {
      Release.create!
    }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
