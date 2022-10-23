class ContentTagsController < ApplicationController
  before_action :set_content_tag, only: %i[ show edit update destroy ]

  # GET /content_tags or /content_tags.json
  def index
    @content_tags = ContentTag.all
  end

  # GET /content_tags/1 or /content_tags/1.json
  def show
  end

  # GET /content_tags/new
  def new
    @content_tag = ContentTag.new
  end

  # GET /content_tags/1/edit
  def edit
  end

  # POST /content_tags or /content_tags.json
  def create
    @content_tag = ContentTag.new(content_tag_params)

    respond_to do |format|
      if @content_tag.save
        format.html { redirect_to content_tag_url(@content_tag), notice: "Content tag was successfully created." }
        format.json { render :show, status: :created, location: @content_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @content_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_tags/1 or /content_tags/1.json
  def update
    respond_to do |format|
      if @content_tag.update(content_tag_params)
        format.html { redirect_to content_tag_url(@content_tag), notice: "Content tag was successfully updated." }
        format.json { render :show, status: :ok, location: @content_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @content_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_tags/1 or /content_tags/1.json
  def destroy
    @content_tag.destroy

    respond_to do |format|
      format.html { redirect_to content_tags_url, notice: "Content tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_tag
      @content_tag = ContentTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def content_tag_params
      params.require(:content_tag).permit(:contentTag_id, :tag_id, :content_id)
    end
end
