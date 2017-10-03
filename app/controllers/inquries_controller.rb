class InquriesController < ApplicationController
  before_action :set_inqury, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]

  # GET /inquries
  # GET /inquries.json
  def index
    @inquries = Inqury.all
  end

  # GET /inquries/1
  # GET /inquries/1.json
  def show
  end

  # GET /inquries/new
  def new
    @inqury = Inqury.new
  end

  # GET /inquries/1/edit
  def edit
  end

  # POST /inquries
  # POST /inquries.json
  def create
    @inqury = Inqury.new(inqury_params)

    respond_to do |format|
      if verify_recaptcha(model: @inqury) && @inqury.save
        format.html { redirect_to pages_brands_thanks_path, notice: 'Inqury was successfully created.' }
        format.json { render :show, status: :created, location: @inqury }
      else
        format.html { render pages_brands_path }
        format.json { render json: @inqury.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquries/1
  # PATCH/PUT /inquries/1.json
  def update
    respond_to do |format|
      if @inqury.update(inqury_params)
        format.html { redirect_to @inqury, notice: 'Inqury was successfully updated.' }
        format.json { render :show, status: :ok, location: @inqury }
      else
        format.html { render :edit }
        format.json { render json: @inqury.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquries/1
  # DELETE /inquries/1.json
  def destroy
    @inqury.destroy
    respond_to do |format|
      format.html { redirect_to inquries_url, notice: 'Inqury was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inqury
      @inqury = Inqury.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inqury_params
      params.require(:inqury).permit(:name, :brand, :promo_type, :email, :budget, :seeking)
    end
end
