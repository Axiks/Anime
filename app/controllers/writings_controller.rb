require 'open-uri'

class WritingsController < ApplicationController
  before_action :set_writing, only: [:show, :edit, :update, :destroy]

  # GET /writings
  # GET /writings.json
  def index
    @writings = Writing.all
  end

  # GET /writings/1
  # GET /writings/1.json
  def show
    @writing = Writing.find(params[:id])
    @topics = Writing.find(params[:id]).topics

    if @writing.avatar.attached?
    else
      downloaded_image = open("https://shikimori.org" + @writing.shikimory_img)
      @writing.avatar.attach(io: downloaded_image  , filename: "avatar.jpg")
    end
  end

  # GET /writings/new
  def new
    @writing = Writing.new
  end

  # GET /writings/1/edit
  def edit
  end

  # POST /writings
  # POST /writings.json
  def create
    @writing = Writing.new(writing_params.permit!)

    respond_to do |format|
      if @writing.save
        format.html { redirect_to @writing, notice: 'Writing was successfully created.' }
        format.json { render :show, status: :created, location: @writing }
      else
        format.html { render :new }
        format.json { render json: @writing.errors, status: :unprocessable_entity }
      end
    end
  end

  def add_image
      @writing = Writing.find(params[:id])
      @writing.images.attach(params[:images])
      redirect_to @writing
  end

  # PATCH/PUT /writings/1
  # PATCH/PUT /writings/1.json
  def update
    respond_to do |format|
      if @writing.update(writing_params.permit!)
        format.html { redirect_to @writing, notice: 'Writing was successfully updated.' }
        format.json { render :show, status: :ok, location: @writing }
      else
        format.html { render :edit }
        format.json { render json: @writing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writings/1
  # DELETE /writings/1.json
  def destroy
    @writing.destroy
    respond_to do |format|
      format.html { redirect_to writings_url, notice: 'Writing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_writing
      @writing = Writing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def writing_params
      params.fetch(:writing, {})
    end

    def img_params
      params.require(:writing).permit(images: [])
    end
end
