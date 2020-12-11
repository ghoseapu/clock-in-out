class TeacherClocksController < ApplicationController
  #before_action :set_teacher_clock, only: [:show, :edit, :update, :destroy]

  def index
    @teacher_clocks = TeacherClock.order('teacher_logged_time DESC').all
  end

  def show
    @teacher_clock = TeacherClock.find(params[:id])
  end

  def new
    #@teacher_clock = TeacherClock.new
  end

  def edit
    @teacher_clock = TeacherClock.find(params[:id])
  end

  def create
    @teacher_clock = TeacherClock.new(teacher_clock_params)
    
    if @teacher_clock.save
      redirect_to teacher_clocks_path
    else
      redirect_to new_teacher_clock_path
    end
  end

  def update
    @teacher_clock = TeacherClock.find(params[:id])

    if @teacher_clock.update(teacher_clock_params)
      redirect_to teacher_clocks_path
    else
      redirect_to edit_teacher_clock_path
    end
  end

  # DELETE /teacher_clocks/1
  # DELETE /teacher_clocks/1.json
  def destroy
    @teacher_clock = TeacherClock.find(params[:id])
    @teacher_clock.destroy
    redirect_to teacher_clocks_path
  end

  private
    def teacher_clock_params
      params.require(:teacher_clock).permit(:teacher_name, :teacher_logged_time, :teacher_clocked_in)
    end
end
