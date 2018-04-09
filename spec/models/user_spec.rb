require 'rails_helper'

RSpec.describe User, type: :model do

  it "fails when empty" do
    expect {
      User.create!
    }.to raise_error(ActiveRecord::RecordInvalid)
  end

  describe "setting the user's role" do
    context "if it's the first user to be created" do
      before(:each) do
        User.delete_all
      end

      it "gets admin rights" do
        user = User.create!(email: "admin@example.com", password: "12345678")
        expect(user).to be_admin
      end
    end

    context "if it's not the first user to be created" do
      before(:each) do
        FactoryBot.create(:user)
      end

      it "gets normal rights" do
        user = User.create!(email: "not_admin@example.com", password: "12345678")
        expect(user).not_to be_admin
      end
    end
  end

end
