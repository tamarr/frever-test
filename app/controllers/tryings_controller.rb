class TryingsController < ApplicationController
  before_action :set_trying, only: %i[ show edit update destroy ]

  # GET /tryings or /tryings.json
  def index
    @tryings = Trying.all
  end

  # GET /tryings/1 or /tryings/1.json
  def show
  end

  # GET /tryings/new
  def new
    @trying = Trying.new
  end

  # GET /tryings/1/edit
  def edit
  end

  # POST /tryings or /tryings.json
  def create
    @trying = Trying.new(trying_params)

    respond_to do |format|
      if @trying.save
        format.html { redirect_to @trying, notice: "Trying was successfully created." }
        format.json { render :show, status: :created, location: @trying }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trying.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tryings/1 or /tryings/1.json
  def update
    respond_to do |format|
      if @trying.update(trying_params)
        format.html { redirect_to @trying, notice: "Trying was successfully updated." }
        format.json { render :show, status: :ok, location: @trying }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trying.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tryings/1 or /tryings/1.json
  def destroy
    @trying.destroy
    respond_to do |format|
      format.html { redirect_to tryings_url, notice: "Trying was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trying
      @trying = Trying.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trying_params
      params.require(:trying).permit(:one, :two, :three)
    end
end
