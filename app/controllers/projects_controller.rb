class ProjectsController < ApplicationController

  # GET /project-items or /project-items.json
  def index 
    @project_items = Project.all
  end

  # GET /projects/1 or /projects/1.json
  def show
  end

  # GET /projects/new
  def new 
    @project_item = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects or /projects.json
  def create
    @project_item = Project.new(params.require(:project).permit(:title, :subtitle, :body))

  respond_to do |format|
      if @project_item.save
        format.html { redirect_to projects_path, notice: "Project was successfully created. 🚀" }
        format.json { render :show, status: :created, location: @project_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_item.errors, status: :unprocessable_entity }
      end
    end
  end
end
