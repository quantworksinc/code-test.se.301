class FootsController < ApplicationController
  before_action :set_foot, only: [:show, :edit, :update, :destroy]

  # GET /foots
  # GET /foots.json
  def index
    @foots = Foot.all
  end

  # GET /foots/1
  # GET /foots/1.json
  def show
  end

  # GET /foots/new
  def new
    @foot = Foot.new
  end

  # GET /foots/1/edit
  def edit
  end

  # POST /foots
  # POST /foots.json
  def create
    @foot = Foot.new(foot_params)

    respond_to do |format|
      if @foot.save
        format.html { redirect_to foots_path, notice: 'Foot was successfully created.' }
        format.json { render :show, status: :created, location: @foot }
      else
        format.html { render :new }
        format.json { render json: @foot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foots/1
  # PATCH/PUT /foots/1.json
  def update
    respond_to do |format|
      if @foot.update(foot_params)
        format.html { redirect_to @foot, notice: 'Foot was successfully updated.' }
        format.json { render :show, status: :ok, location: @foot }
      else
        format.html { render :edit }
        format.json { render json: @foot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foots/1
  # DELETE /foots/1.json
  def destroy
    @foot.destroy
    respond_to do |format|
      format.html { redirect_to foots_url, notice: 'Foot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_foot
      @foot = Foot.find(params[:id])
    end


    def foot_params
      params.require(:foot).permit(:number, :date_entry)
    end
end
