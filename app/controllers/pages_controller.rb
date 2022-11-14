class PagesController < ApplicationController
  before_action :set_page, only: %i[ show edit update destroy ]
  before_action :require_password_verification

  # GET /pages or /pages.json
  def index
    @pages = Page.all
    @module_sections = ModuleSection.all
  end

  # GET /pages/1 or /pages/1.json
  def show
    @pages = Page.all
    @module_sections = ModuleSection.all
  end

  # GET /pages/new
  def new
    @page = Page.new
    @module_sections = ModuleSection.all
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
    @module_sections = ModuleSection.all
  end

  # POST /pages or /pages.json
  def create
    @page = Page.new(page_params.except(:tags))
    @module_sections = ModuleSection.all

    create_or_delete_pages_tags(@page, params[:page][:tags])

    respond_to do |format|
      if @page.save
        format.html { redirect_to page_url(@page), notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1 or /pages/1.json
  def update
    create_or_delete_pages_tags(@page, params[:page][:tags])
    respond_to do |format|
      if @page.update(page_params.except(:tags))
        format.html { redirect_to page_url(@page), notice: "Page was successfully updated." }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1 or /pages/1.json
  def destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url, notice: "Page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    
    def create_or_delete_pages_tags(page, tags)
      page.content_tags.destroy_all
      tags = tags.strip.split(' ').map(&:downcase)
      tags.each do |tag|
        page.tags << Tag.find_or_create_by(tag_name: tag.strip)
        puts tag
      end
    end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.require(:page).permit(:module_id, :content_id, :page_name, :page_description, :tags)
    end
end
