require 'rails_helper'

RSpec.describe "releases/index.html.haml", type: :view do
  it "lists releases" do
    assign(:releases, [Release.new(project: "dummy", version: "0.0.1",
      release_date_time: "20151207T2236")])
    render
    expect(rendered).to include "dummy"
    expect(rendered).to include "0.0.1"
  end
end
