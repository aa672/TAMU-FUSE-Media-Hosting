class ModuleSectionsController < ApplicationController
  before_action :set_module_section, only: %i[ show edit update destroy ]
  before_action :check_admin, only: %i[edit create update destroy]

  # GET /module_sections or /module_sections.json
  def index
    @module_sections = ModuleSection.all
    @pages = Page.all
    @internship_ops = InternshipOp.all
  end

  # GET /module_sections/1 or /module_sections/1.json
  def show
    @pages = Page.all
    @internship_ops = InternshipOp.all
  end

  # GET /module_sections/new
  def new
    @module_section = ModuleSection.new
  end

  # GET /module_sections/1/edit
  def edit
    @module_section = ModuleSection.find(params[:id])
    @pages = Page.all
  end

  # POST /module_sections or /module_sections.json
  def create
    @module_section = ModuleSection.new(module_section_params)
    respond_to do |format|
      if @module_section.save
        format.html { redirect_to module_section_url(@module_section), notice: "Module section was successfully created." }
        format.json { render :show, status: :created, location: @module_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @module_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module_sections/1 or /module_sections/1.json
  def update
    respond_to do |format|
      if @module_section.update(module_section_params)
        format.html { redirect_to module_section_url(@module_section), notice: "Module section was successfully updated." }
        format.json { render :show, status: :ok, location: @module_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @module_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_sections/1 or /module_sections/1.json
  def destroy
    @module_section.destroy

    respond_to do |format|
      format.html { redirect_to module_sections_url, notice: "Module section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_section
      @module_section = ModuleSection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def module_section_params
      params.require(:module_section).permit(:module_name)
    end
end
