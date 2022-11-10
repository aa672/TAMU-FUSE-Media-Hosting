class ModulesController < ApplicationController
  before_action :set_module, only: %i[ show edit update destroy ]

  # GET /modules or /modules.json
  def index
    @modules = Module.all
  end

  # GET /modules/1 or /modules/1.json
  def show
  end

  # GET /modules/new
  def new
    @module = Module.new
  end

  # GET /modules/1/edit
  def edit
  end

  # POST /modules or /modules.json
  def create
    @module = Module.new(module_params)

    respond_to do |format|
      if @module.save
        format.html { redirect_to module_url(@module), notice: "Module was successfully created." }
        format.json { render :show, status: :created, location: @module }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modules/1 or /modules/1.json
  def update
    respond_to do |format|
      if @module.update(module_params)
        format.html { redirect_to module_url(@module), notice: "Module was successfully updated." }
        format.json { render :show, status: :ok, location: @module }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modules/1 or /modules/1.json
  def destroy
    @module.destroy

    respond_to do |format|
      format.html { redirect_to modules_url, notice: "Module was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module
      @module = Module.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def module_params
      params.require(:module).permit(:module_id, :module_name)
    end
end
