class RaportsController < ApplicationController
  before_action :set_raport, only: [:show, :edit, :update, :destroy]

  def index
    @raports = Raport.all
  end

  def show
  end

  def new
    @meeting = Meeting.find(params["meeting_id"])
    @raport = Raport.new
    @raport.meeting = @meeting
  end

  def edit
  end

  def create

    @raport = Raport.new(raport_params)

    respond_to do |format|
      if @raport.save
        format.html { redirect_to meeting_path(@raport.meeting), notice: 'Raport was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @raport.update(raport_params)
        format.html { redirect_to @raport, notice: 'Raport was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @raport.destroy
    respond_to do |format|
      format.html { redirect_to raports_url, notice: 'Raport was successfully destroyed.' }
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
