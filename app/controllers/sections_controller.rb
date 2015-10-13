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
    if @section.save
      redirect_to sections_path
    else
      render :new
    end
  end

  private
  def find_section
    @section = Section.find(params[:id])
  end
end
