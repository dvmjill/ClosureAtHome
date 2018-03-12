class VetUsersController < ApplicationController
  before_action :set_vet_user, only: [:show, :edit, :update, :destroy]

  # GET /vet_users
  # GET /vet_users.json
  def index
    @vet_users = VetUser.all
  end

  # GET /vet_users/1
  # GET /vet_users/1.json
  def show
  end

  # GET /vet_users/new
  def new
    @vet_user = VetUser.new
  end

  # GET /vet_users/1/edit
  def edit
  end

  # POST /vet_users
  # POST /vet_users.json
  def create
    @vet_user = VetUser.new(vet_user_params)

    respond_to do |format|
      if @vet_user.save
        # session[:vet_id] = @vet.id
        format.html { redirect_to @vet_user, notice: 'Vet user was successfully created.' }
        format.json { render :show, status: :created, location: @vet_user }
      else
        format.html { render :new }
        # format.html { render :vet_login}
        format.json { render json: @vet_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vet_users/1
  # PATCH/PUT /vet_users/1.json
  def update
    respond_to do |format|
      if @vet_user.update(vet_user_params)
        format.html { redirect_to @vet_user, notice: 'Vet user was successfully updated.' }
        format.json { render :show, status: :ok, location: @vet_user }
      else
        format.html { render :edit }
        format.json { render json: @vet_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vet_users/1
  # DELETE /vet_users/1.json
  def destroy
    @vet_user.destroy
    respond_to do |format|
      format.html { redirect_to vet_users_url, notice: 'Vet user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vet_user
      @vet_user = VetUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vet_user_params
      params.require(:vet_user).permit(:first_name, :last_name, :address, :city, :state, :zip, :email, :phone, :crematory_name)
    end
end
# def vet_params
#   params.require(:vet).permit(:username, :password)
