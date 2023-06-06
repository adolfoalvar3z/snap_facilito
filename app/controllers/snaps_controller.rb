class SnapsController < ApplicationController
  before_action :set_snap, only: %i[ show edit update destroy ]

  # GET /snaps or /snaps.json
  def index
    @snaps = Snap.all
  end

  # GET /snaps/1 or /snaps/1.json
  def show
  end

  # GET /snaps/new
  def new
    @snap = Snap.new
  end

  # GET /snaps/1/edit
  def edit
  end

  # POST /snaps or /snaps.json
  def create
    @snap = Snap.new(snap_params)

    respond_to do |format|
      if @snap.save
        format.html { redirect_to snap_url(@snap), notice: "Snap was successfully created." }
        format.json { render :show, status: :created, location: @snap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @snap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snaps/1 or /snaps/1.json
  def update
    respond_to do |format|
      if @snap.update(snap_params)
        format.html { redirect_to snap_url(@snap), notice: "Snap was successfully updated." }
        format.json { render :show, status: :ok, location: @snap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @snap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snaps/1 or /snaps/1.json
  def destroy
    @snap.destroy

    respond_to do |format|
      format.html { redirect_to snaps_url, notice: "Snap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snap
      @snap = Snap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def snap_params
      params.require(:snap).permit(:title, :color, :image)
    end
end
