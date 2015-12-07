require 'rails_helper'

RSpec.describe "releases/index.html.haml", type: :view do
  it "lists releases" do
    assign(:releases, [Release.new(project: "dummy", version: "0.0.1")])
    render
    expect(rendered).to include "dummy"
    expect(rendered).to include "0.0.1"
  end
end
