class RecieversController < ApplicationController
  before_action :set_reciever, only: [:show, :edit, :update, :destroy]

  # GET /recievers
  # GET /recievers.json
  def index
    @recievers = Reciever.all
  end

  # GET /recievers/1
  # GET /recievers/1.json
  def show
  end

  # GET /recievers/new
  def new
    @reciever = Reciever.new
  end

  # GET /recievers/1/edit
  def edit
  end

  # POST /recievers
  # POST /recievers.json
  def create
    @reciever = Reciever.new(reciever_params)

    respond_to do |format|
      if @reciever.save
        format.html { redirect_to @reciever, notice: 'Reciever was successfully created.' }
        format.json { render :show, status: :created, location: @reciever }
      else
        format.html { render :new }
        format.json { render json: @reciever.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recievers/1
  # PATCH/PUT /recievers/1.json
  def update
    respond_to do |format|
      if @reciever.update(reciever_params)
        format.html { redirect_to @reciever, notice: 'Reciever was successfully updated.' }
        format.json { render :show, status: :ok, location: @reciever }
      else
        format.html { render :edit }
        format.json { render json: @reciever.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recievers/1
  # DELETE /recievers/1.json
  def destroy
    @reciever.destroy
    respond_to do |format|
      format.html { redirect_to recievers_url, notice: 'Reciever was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reciever
      @reciever = Reciever.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reciever_params
      params.require(:reciever).permit(:user_id)
    end
end
