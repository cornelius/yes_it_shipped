class ReleasesController < ApplicationController
  def index
    @releases = Release.all
  end

  def create
    Release.create!(version: params[:version], project: params[:project],
      project_url: params[:project_url],
      release_date_time: params[:release_date_time],
      release_url: params[:release_url],
      ysi_config_url: params[:ysi_config_url])

    render plain: "ok"
  end

  def show
    render json: Release.where(project: params[:project], version: params[:version]).last
  end
end
