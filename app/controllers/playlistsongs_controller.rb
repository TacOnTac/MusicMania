class PlaylistsongsController < ApplicationController
  before_action :set_playlistsong, only: %i[ show edit update destroy ]

  # GET /playlistsongs or /playlistsongs.json
  def index
    @playlistsongs = Playlistsong.all
  end

  # GET /playlistsongs/1 or /playlistsongs/1.json
  def show
  end

  # GET /playlistsongs/new
  def new
    @playlistsong = Playlistsong.new
  end

  # GET /playlistsongs/1/edit
  def edit
  end

  # POST /playlistsongs or /playlistsongs.json
  def create
    @playlistsong = Playlistsong.new(playlistsong_params)

    respond_to do |format|
      if @playlistsong.save
        format.html { redirect_to playlistsong_url(@playlistsong), notice: "Playlistsong was successfully created." }
        format.json { render :show, status: :created, location: @playlistsong }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @playlistsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlistsongs/1 or /playlistsongs/1.json
  def update
    respond_to do |format|
      if @playlistsong.update(playlistsong_params)
        format.html { redirect_to playlistsong_url(@playlistsong), notice: "Playlistsong was successfully updated." }
        format.json { render :show, status: :ok, location: @playlistsong }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playlistsong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlistsongs/1 or /playlistsongs/1.json
  def destroy
    @playlistsong.destroy

    respond_to do |format|
      format.html { redirect_to playlistsongs_url, notice: "Playlistsong was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlistsong
      @playlistsong = Playlistsong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playlistsong_params
      params.fetch(:playlistsong, {})
    end
end
