class TrnpostsController < ApplicationController
  before_action :set_trnpost, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index show ]
  before_action only: [ :create, :new, :destroy, :edit, :update ] do
    authorize_request(["author"])
  end

  # before_action only: [:edit, :update, :destroy] do
  #   authorize_request(["admin"])
  #  end
   
  # GET /trnposts or /trnposts.json
  def index
    @trnposts = Trnpost.all
  end

  # GET /trnposts/1 or /posts/1.json
  def show
  end

  # GET /trnposts/new
  def new
    @trnpost = Trnpost.new
  end

  # GET /trnposts/1/edit
  def edit
  end

  # TRNPOST /trnposts or /trnposts.json
  def create
    @trnpost = Trnpost.new(trnpost_params)
    @trnpost.user = current_user
    respond_to do |format|
      if @trnpost.save
        format.html { redirect_to trnpost_url(@trnpost), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @trnpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trnpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trnposts/1 or /trnposts/1.json
  def update
    respond_to do |format|
      if @trnpost.update(trnpost_params)
        format.html { redirect_to trnpost_url(@trnpost), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @trnpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trnpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trnposts/1 or /trnposts/1.json
  def destroy
    @trnpost.destroy

    respond_to do |format|
      format.html { redirect_to trnposts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trnpost
      @trnpost = Trnpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trnpost_params
      params.require(:trnpost).permit(:image, :title, :description, :comment, :user_id)
    end
end
