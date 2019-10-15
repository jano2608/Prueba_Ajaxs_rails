class ConpaniesController < ApplicationController
  before_action :set_conpany, only: [:show, :edit, :update, :destroy]
  

  # GET /conpanies
  # GET /conpanies.json
  def index
    @conpanies = Conpany.all
    @conpany = Conpany.new
  end

  # GET /conpanies/1
  # GET /conpanies/1.json
  def show
    @complaint = Complaint.new
  end

  # GET /conpanies/new
  def new
    @conpany = Conpany.new
  end

  # GET /conpanies/1/edit
  def edit
  end

  # POST /conpanies
  # POST /conpanies.json
  def create
    @conpany = Conpany.new(conpany_params)

    respond_to do |format|
      if @conpany.save
        format.html { redirect_to @conpany, notice: 'Conpany was successfully created.' }
        format.json { render :show, status: :created, location: @conpany }
        format.js 
      else
        format.html { render :new }
        format.json { render json: @conpany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conpanies/1
  # PATCH/PUT /conpanies/1.json
  def update
    respond_to do |format|
      if @conpany.update(conpany_params)
        format.html { redirect_to conpanies_path , notice: 'Conpany was successfully updated.' }
        format.json { render :show, status: :ok, location: @conpany }
        
      else
        format.html { render :edit }
        format.json { render json: @conpany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conpanies/1
  # DELETE /conpanies/1.json
  def destroy
    @conpany.destroy
    respond_to do |format|
      format.html { redirect_to conpanies_url, notice: 'Conpany was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conpany
      @conpany = Conpany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conpany_params
      params.require(:conpany).permit(:name)
    end
end
