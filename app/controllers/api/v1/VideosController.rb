class Api::V1::VideosController < ApplicationController
    # before_action :authenticate_user!
    # before_action :set_course
  
    def index
      @videos = @course.videos
      render json: @videos
    end
  
    def create
      Rails.logger.debug("Received params: #{params.inspect}")
      @video = @course.videos.build(video_params)
      if @video.save
        render json: @video, status: :created
      else
        render json: @video.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @video = @course.videos.find(params[:id])
      render json: @video
    end
  
    private
  
    def set_course
      @course = Course.find(params[:course_id])
    end
  
    def video_params
      params.require(:video).permit(:title, :video)
    end
  end
  