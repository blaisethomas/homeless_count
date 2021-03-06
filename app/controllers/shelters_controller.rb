class SheltersController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_shelter, only: [:show, :edit, :update, :destroy]

  # GET /shelters
  # GET /shelters.json
  def index
    @shelters = Shelter.all
  end

  # GET /shelters/1
  # GET /shelters/1.json
  def show
  end

  # GET /shelters/new
  def new
    @shelter = Shelter.new
  end

  # GET /shelters/1/edit
  def edit
  end

  # POST /shelters
  # POST /shelters.json
  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user

    respond_to do |format|
      if @shelter.save
        format.html { redirect_to count_index_path, notice: 'Shelter was successfully created.' }
        format.json { render :show, status: :created, location: @shelter }
      else
        format.html { render count_index_path }
        format.json { render json: @shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shelters/1
  # PATCH/PUT /shelters/1.json
  def update
    respond_to do |format|
      if @shelter.update(shelter_params)
        format.html { redirect_to @shelter, notice: 'Shelter was successfully updated.' }
        format.json { render :show, status: :ok, location: @shelter }
      else
        format.html { render :edit }
        format.json { render json: @shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shelters/1
  # DELETE /shelters/1.json
  def destroy
    @shelter.destroy
    respond_to do |format|
      format.html { redirect_to shelters_url, notice: 'Shelter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shelter
      @shelter = Shelter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shelter_params
      params.require(:shelter).permit(:category, :user_id)
    end
end
