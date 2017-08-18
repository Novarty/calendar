class MeetingsController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  # GET /meetings
  def index
    @meetings = Meeting.where("user_id = #{current_user.id}")
  end

  # GET /meetings/1
  def show
    @meeting = Meeting.find(params[:id])
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
  end

  # GET /meetings/1/edit
  def edit
    @meeting = Meeting.find(params[:id])
  end

  # POST /meetings
  def create
    @meeting = current_user.meetings.new(meeting_params)
    if @meeting.save
      redirect_to @meeting, notice: 'Created event.'
    else
      render :new
    end
  end

  # PATCH/PUT /meetings/1
  def update
    if @meeting.update(meeting_params)
      redirect_to @meeting, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /meetings/1
  def destroy
    @meeting.destroy
      redirect_to meetings_url, notice: 'Event was successfully destroyed.'
  end

  def welcome
  end

  def all
    @meetings = Meeting.where("user_id = #{current_user.id}")
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def meeting_params
    params.require(:meeting).permit(:name, :start_time, :end_time)
  end
end
