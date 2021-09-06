class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

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
    @project_item = Project.new(project_params)

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

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    respond_to do |format|
        if @project_item.update(project_params)
          format.html { redirect_to projects_path, notice: "Project was successfully updated. 🎉" }
          format.json { render :show, status: :ok, location: @project_item }
        else 
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @project_item.errors, staus: :unprocessable_entity }
        end
    end
  end

  # DELETE /projects/1 or /projects/1.json  
  def destroy
    @project_item.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Project was successfully destroyed. 💥" }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project 
    @project_item = Project.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def project_params
    params.require(:project).permit(:title, :subtitle, :body)
  end
end
