class TagsController < ApplicationController
  def create
    # find_or_create will either return the tag if it exists, or
    # create it new if it doesn't -- a perfect way to ensure any
    # tag is unique in the database!
    tag = Tag.find_or_create_by tag_params

    # if create is nested with a video, we will assume this means
    # add the tag to the video, not JUST "CREATE tag"…
    if params[:video_id]
      video = Video.find params[:video_id]

      video.tags << tag

      # go back to the video edit page!
      redirect_to edit_video_path(video)
    end
  end

  def destroy
    if params[:video_id]
      # if destroy is nested in a video, we will assume this means
      # remove the tag from the video, not "DESTROY tag"…
      video = Video.find params[:video_id]
      tag = Tag.find params[:id]

      video.tags.delete(tag)

      # go back to the video edit page!
      redirect_to edit_video_path(video)
    end
  end

  def tag_params
    params.require(:tag).permit(:term)
  end
end
