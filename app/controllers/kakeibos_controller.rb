class KakeibosController < ApplicationController
  before_action :set_kakeibo, only: [:show, :edit, :update, :destroy]

  # GET /kakeibos
  # GET /kakeibos.json
  def index
    @kakeibos = Kakeibo.all
  end

  # GET /kakeibos/1
  # GET /kakeibos/1.json
  def show
  end

  # GET /kakeibos/new
  def new
    @kakeibo = Kakeibo.new
  end

  # GET /kakeibos/1/edit
  def edit
  end

  # POST /kakeibos
  # POST /kakeibos.json
  def create
    @kakeibo = Kakeibo.new(kakeibo_params)

    respond_to do |format|
      if @kakeibo.save
        format.html { redirect_to @kakeibo, notice: 'Kakeibo was successfully created.' }
        format.json { render :show, status: :created, location: @kakeibo }
      else
        format.html { render :new }
        format.json { render json: @kakeibo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kakeibos/1
  # PATCH/PUT /kakeibos/1.json
  def update
    respond_to do |format|
      if @kakeibo.update(kakeibo_params)
        format.html { redirect_to @kakeibo, notice: 'Kakeibo was successfully updated.' }
        format.json { render :show, status: :ok, location: @kakeibo }
      else
        format.html { render :edit }
        format.json { render json: @kakeibo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kakeibos/1
  # DELETE /kakeibos/1.json
  def destroy
    @kakeibo.destroy
    respond_to do |format|
      format.html { redirect_to kakeibos_url, notice: 'Kakeibo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kakeibo
      @kakeibo = Kakeibo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kakeibo_params
      params.require(:kakeibo).permit(:incomeitem, :incomeprice, :outcomeitem, :outcomeprice, :summary)
    end
end
