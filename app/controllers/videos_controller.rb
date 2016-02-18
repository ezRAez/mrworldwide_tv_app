class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(self.video_params)

    if @video.save
      redirect_to videos_path
    else
      render :new
    end
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update(self.video_params)
      redirect_to videos_path
    else
      render :edit
    end
  end

  def video_params
    params.require(:video).permit(
      :title,
      :album,
      :youtube_id,
      :featured_artists,
      :tags,
      :released_on
    )
  end
end
