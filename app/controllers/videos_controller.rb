class VideosController < ApplicationController

  ############## AUTH  PROTECTION ################

  # only authenticated users (logged in) can create,
  #  update, or destroy videos
  before_action :authenticate, except: [:index]

  ################### ROUTES #####################

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(self.video_params)

    if @video.save
      redirect_to videos_path(anchor: @video.fragment_id)
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
      redirect_to videos_path(anchor: @video.fragment_id)
    else
      render :edit
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    flash[:message] = "'#{@video.title}' removed!"
    redirect_to videos_path
  end

  ################### HELPERS #####################

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

  def authenticate
    unless logged_in?
      flash[:message] =
        "You must be logged in to access this section of the site."
      redirect_to login_path
    end
  end
end
