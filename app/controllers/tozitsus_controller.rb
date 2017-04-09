class TozitsusController < ApplicationController
  before_action :set_tozitsu, only: [:show, :edit, :update, :destroy]

  # GET /tozitsus
  # GET /tozitsus.json
  def index
    @tozitsus = Tozitsu.all
  end

  # GET /tozitsus/1
  # GET /tozitsus/1.json
  def show
  end

  # GET /tozitsus/new
  def new
    @tozitsu = Tozitsu.new
  end

  # GET /tozitsus/1/edit
  def edit
  end

  # POST /tozitsus
  # POST /tozitsus.json
  def create
    @tozitsu = Tozitsu.new(tozitsu_params)

    respond_to do |format|
      if @tozitsu.save
        format.html { redirect_to @tozitsu, notice: 'Tozitsu was successfully created.' }
        format.json { render :show, status: :created, location: @tozitsu }
      else
        format.html { render :new }
        format.json { render json: @tozitsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tozitsus/1
  # PATCH/PUT /tozitsus/1.json
  def update
    respond_to do |format|
      if @tozitsu.update(tozitsu_params)
        format.html { redirect_to @tozitsu, notice: 'Tozitsu was successfully updated.' }
        format.json { render :show, status: :ok, location: @tozitsu }
      else
        format.html { render :edit }
        format.json { render json: @tozitsu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tozitsus/1
  # DELETE /tozitsus/1.json
  def destroy
    @tozitsu.destroy
    respond_to do |format|
      format.html { redirect_to tozitsus_url, notice: 'Tozitsu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tozitsu
      @tozitsu = Tozitsu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tozitsu_params
      params.require(:tozitsu).permit(:name, :address, :kishu, :error, :content, :image)
    end
end
