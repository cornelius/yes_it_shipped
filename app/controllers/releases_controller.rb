class ReleasesController < ApplicationController
  def index
    @releases = Release.order(release_date_time: :desc).limit(10)
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
    release = Release.where(project: params[:project], version: params[:version]).last
    if release
      render json: release
    else
      render plain: "not found", status: 404
    end
  end
end
