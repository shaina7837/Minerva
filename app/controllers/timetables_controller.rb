class TimetablesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_timetable, only: [:show, :edit, :update, :destroy]

  def index
    @timetables = Timetable.all
    respond_with(@timetables)
  end

  def show
    respond_with(@timetable)
  end

  def new
    @timetable = Timetable.new
    respond_with(@timetable)
  end

  def edit
  end

  def create
    @timetable = Timetable.new(timetable_params)
    @timetable.save
    respond_with(@timetable)
  end

  def update
    @timetable.update(timetable_params)
    respond_with(@timetable)
  end

  def destroy
    @timetable.destroy
    respond_with(@timetable)
  end

  private
    def set_timetable
      @timetable = Timetable.find(params[:id])
    end

    def timetable_params
      params.require(:timetable).permit(:name, :time, :work)
    end
end
