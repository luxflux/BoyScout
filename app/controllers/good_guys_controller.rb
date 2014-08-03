class GoodGuysController < ApplicationController
  before_action :set_good_guy, only: [:show, :edit, :update, :destroy]

  # GET /good_guys
  # GET /good_guys.json
  def index
    @good_guys = GoodGuy.all.includes(:good_deeds).shuffle
  end

  # GET /good_guys/1
  # GET /good_guys/1.json
  def show
  end

  # GET /good_guys/new
  def new
    @good_guy = GoodGuy.new
  end

  # GET /good_guys/1/edit
  def edit
  end

  # POST /good_guys
  # POST /good_guys.json
  def create
    @good_guy = GoodGuy.new(good_guy_params)

    respond_to do |format|
      if @good_guy.save
        format.html { redirect_to @good_guy, notice: 'Good guy was successfully created.' }
        format.json { render :show, status: :created, location: @good_guy }
      else
        format.html { render :new }
        format.json { render json: @good_guy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /good_guys/1
  # PATCH/PUT /good_guys/1.json
  def update
    respond_to do |format|
      if @good_guy.update(good_guy_params)
        format.html { redirect_to @good_guy, notice: 'Good guy was successfully updated.' }
        format.json { render :show, status: :ok, location: @good_guy }
      else
        format.html { render :edit }
        format.json { render json: @good_guy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /good_guys/1
  # DELETE /good_guys/1.json
  def destroy
    @good_guy.destroy
    respond_to do |format|
      format.html { redirect_to good_guys_url, notice: 'Good guy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good_guy
      @good_guy = GoodGuy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def good_guy_params
      params.require(:good_guy).permit(:name)
    end
end
