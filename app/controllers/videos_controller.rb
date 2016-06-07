class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new video_params

    if @video.save
      redirect_to videos_path
    else
      render :new
    end
  end

  def video_params
    params.require(:video).permit(
      :title,
      :youtube_id,
      :released_on
    )
  end
end
