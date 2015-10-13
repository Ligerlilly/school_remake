class SectionsController < ApplicationController
  before_action :find_section, except: [:index, :create, :new]
  def new
    @section = Section.new
  end

  def index
    @sections = Section.all
  end

  def show
  end

  def create
    @chapter = Chapter.find(1)
    @section = @chapter.sections.new(section_params)
    if @section.save
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def destroy
    @section.destroy
    redirect_to chapter_path(1)
  end

  private
  def find_section
    @section = Section.find(params[:id])
  end
  def section_params
    params.require(:section).permit(:name)
  end
end
