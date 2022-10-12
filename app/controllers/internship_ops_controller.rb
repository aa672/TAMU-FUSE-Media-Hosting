class InternshipOpsController < ApplicationController
  before_action :set_internship_op, only: %i[ show edit update destroy ]

  # GET /internship_ops or /internship_ops.json
  def index
    @internship_ops = InternshipOp.all
  end

  # GET /internship_ops/1 or /internship_ops/1.json
  def show
  end

  # GET /internship_ops/new
  def new
    @internship_op = InternshipOp.new
  end

  # GET /internship_ops/1/edit
  def edit
  end

  # POST /internship_ops or /internship_ops.json
  def create
    @internship_op = InternshipOp.new(internship_op_params)

    respond_to do |format|
      if @internship_op.save
        format.html { redirect_to internship_op_url(@internship_op), notice: "Internship op was successfully created." }
        format.json { render :show, status: :created, location: @internship_op }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @internship_op.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /internship_ops/1 or /internship_ops/1.json
  def update
    respond_to do |format|
      if @internship_op.update(internship_op_params)
        format.html { redirect_to internship_op_url(@internship_op), notice: "Internship op was successfully updated." }
        format.json { render :show, status: :ok, location: @internship_op }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @internship_op.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /internship_ops/1 or /internship_ops/1.json
  def destroy
    @internship_op.destroy

    respond_to do |format|
      format.html { redirect_to internship_ops_url, notice: "Internship op was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internship_op
      @internship_op = InternshipOp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def internship_op_params
      params.require(:internship_op).permit(:internship_id, :internship_name, :company_name, :contact_name, :contact_email, :company_link, :description)
    end
end
