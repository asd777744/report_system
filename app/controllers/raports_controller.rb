class RaportsController < ApplicationController
  before_action :set_raport, only: [:show, :edit, :update, :destroy]

  # GET /raports
  # GET /raports.json
  def index
    @raports = Raport.all
  end

  # GET /raports/1
  # GET /raports/1.json
  def show
  end

  # GET /raports/new
  def new
    @raport = Raport.new
  end

  # GET /raports/1/edit
  def edit
  end

  # POST /raports
  # POST /raports.json
  def create
    @raport = Raport.new(raport_params)

    respond_to do |format|
      if @raport.save
        format.html { redirect_to @raport, notice: 'Raport was successfully created.' }
        format.json { render :show, status: :created, location: @raport }
      else
        format.html { render :new }
        format.json { render json: @raport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raports/1
  # PATCH/PUT /raports/1.json
  def update
    respond_to do |format|
      if @raport.update(raport_params)
        format.html { redirect_to @raport, notice: 'Raport was successfully updated.' }
        format.json { render :show, status: :ok, location: @raport }
      else
        format.html { render :edit }
        format.json { render json: @raport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raports/1
  # DELETE /raports/1.json
  def destroy
    @raport.destroy
    respond_to do |format|
      format.html { redirect_to raports_url, notice: 'Raport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raport
      @raport = Raport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raport_params
      params.require(:raport).permit(:meeting_id, :name, :module, :this_week_work, :need_help, :next_week_work, :share_tech)
    end
end
