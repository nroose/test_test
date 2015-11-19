class ToastsController < ApplicationController
  before_action :set_toast, only: [:show, :edit, :update, :destroy]

  # GET /toasts
  # GET /toasts.json
  def index
    @toasts = Toast.all
  end

  # GET /toasts/1
  # GET /toasts/1.json
  def show
  end

  # GET /toasts/new
  def new
    @toast = Toast.new
  end

  # GET /toasts/1/edit
  def edit
  end

  # POST /toasts
  # POST /toasts.json
  def create
    @toast = Toast.new(toast_params)

    respond_to do |format|
      if @toast.save
        format.html { redirect_to @toast, notice: 'Toast was successfully created.' }
        format.json { render :show, status: :created, location: @toast }
      else
        format.html { render :new }
        format.json { render json: @toast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toasts/1
  # PATCH/PUT /toasts/1.json
  def update
    respond_to do |format|
      if @toast.update(toast_params)
        format.html { redirect_to @toast, notice: 'Toast was successfully updated.' }
        format.json { render :show, status: :ok, location: @toast }
      else
        format.html { render :edit }
        format.json { render json: @toast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toasts/1
  # DELETE /toasts/1.json
  def destroy
    @toast.destroy
    respond_to do |format|
      format.html { redirect_to toasts_url, notice: 'Toast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toast
      @toast = Toast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def toast_params
      params[:toast]
    end
end
