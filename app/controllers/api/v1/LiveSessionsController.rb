class Api::V1::LiveSessionsController < ApplicationController
    # before_action :authenticate_user!
    before_action :set_course
  
    def index
      @live_sessions = @course.live_sessions
      render json: @live_sessions
    end
  
    def create
      @live_session = @course.live_sessions.build(live_session_params)
      if @live_session.save
        render json: @live_session, status: :created
      else
        render json: @live_session.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @live_session = @course.live_sessions.find(params[:id])
      render json: @live_session
    end
  
    private
  
    def set_course
      @course = Course.find(params[:course_id])
    end
  
    def live_session_params
      params.require(:live_session).permit(:start_time, :link)
    end
  end