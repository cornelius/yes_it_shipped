class ReleasesController < ApplicationController
  def index
    @releases = Release.all
  end

  def create
    Release.create!(version: params[:version], project: params[:project])
    render plain: "ok"
  end
end
