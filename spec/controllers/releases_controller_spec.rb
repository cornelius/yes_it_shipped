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
        post :create, {version: "0.0.1", project: "dummy",
          project_url: "https://example.com/dummy",
          release_url: "https://example.com/dummy/v0.0.1",
          release_date_time: "20151207T1739",
          ysi_config_url: "https://example.com/dummy/yes_ship_it.conf"}
        expect(response).to have_http_status(:success)
      }.to change {
        Release.count
      }.by(1)

      expect(Release.last.version).to eq("0.0.1")
    end
  end

  describe "GET #release" do
    it "returns data about release" do
      release = FactoryGirl.create(:release)
      get :show, {project: "dummy", version: "1.0"}
      expect(response).to have_http_status(:success)
      expect(response.body).to eq(release.to_json)
    end
  end

end
