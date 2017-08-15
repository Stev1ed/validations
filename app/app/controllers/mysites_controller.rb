class MysitesController < ApplicationController
  before_action :set_mysite, only: [:show, :edit, :update, :destroy]

  # GET /mysites
  # GET /mysites.json
  def index
    @mysites = Mysite.all
  end

  # GET /mysites/1
  # GET /mysites/1.json
  def show
  end

  # GET /mysites/new
  def new
    @mysite = Mysite.new
  end

  # GET /mysites/1/edit
  def edit
  end

  # POST /mysites
  # POST /mysites.json
  def create
    @mysite = Mysite.new(mysite_params)

    respond_to do |format|
      if @mysite.save
        format.html { redirect_to @mysite, notice: 'Mysite was successfully created.' }
        format.json { render :show, status: :created, location: @mysite }
      else
        format.html { render :new }
        format.json { render json: @mysite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mysites/1
  # PATCH/PUT /mysites/1.json
  def update
    respond_to do |format|
      if @mysite.update(mysite_params)
        format.html { redirect_to @mysite, notice: 'Mysite was successfully updated.' }
        format.json { render :show, status: :ok, location: @mysite }
      else
        format.html { render :edit }
        format.json { render json: @mysite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mysites/1
  # DELETE /mysites/1.json
  def destroy
    @mysite.destroy
    respond_to do |format|
      format.html { redirect_to mysites_url, notice: 'Mysite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mysite
      @mysite = Mysite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mysite_params
      params.require(:mysite).permit(:name, :website)
    end
end
