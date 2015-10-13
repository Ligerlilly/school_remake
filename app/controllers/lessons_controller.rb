class LessonsController < ApplicationController
  before_action :find_lesson, except: [:create, :new, :index]
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.number = Lesson.all.length
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path
  end

  private
  def find_lesson
    @lesson = Lesson.find(params[:id])
  end
  def lesson_params
    params.require(:lesson).permit(:title, :content)
  end
end
