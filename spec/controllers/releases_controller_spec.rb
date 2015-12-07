require 'rails_helper'

RSpec.describe ReleasesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      expect {
        post :create, {version: "0.0.1", project: "dummy"}
        expect(response).to have_http_status(:success)
      }.to change {
        Release.count
      }.by(1)

      expect(Release.last.version).to eq("0.0.1")
    end
  end

end
