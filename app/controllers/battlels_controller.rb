class BattlelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_battlel, only: [:show, :edit, :update, :destroy]

  # GET /battlels
  # GET /battlels.json
  def index
    @battlels = Battlel.all
  end

  # GET /battlels/1
  # GET /battlels/1.json
  def show
  end

  # GET /battlels/new
  def new
    @battlel = Battlel.new
  end

  # GET /battlels/1/edit
  def edit
  end

  # POST /battlels
  # POST /battlels.json
  # def create
  #   @battlel = Battlel.new(battlel_params)

  #   respond_to do |format|
  #     if @battlel.save
  #       format.html { redirect_to @battlel, notice: 'Battlel was successfully created.' }
  #       format.json { render :show, status: :created, location: @battlel }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @battlel.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def create
    my_pet1 = Pet.find_by(name: battlel_params[:pet1])
    my_pet2 = Pet.find_by(name: battlel_params[:pet2])

    if my_pet1.user_id==my_pet2.user_id
      respond_to do |format|
        format.html { redirect_to battlels_path, notice: 'Battlel was not created (same owner is not possible).' }
      end
    else
      @battlel = Battlel.new(battlel_params)
      respond_to do |format|
        if @battlel.save
          format.html { redirect_to @battlel, notice: 'Battlel was successfully created.' }
          format.json { render :show, status: :created, location: @battlel }
        else
          format.html { render :new }
          format.json { render json: @battlel.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /battlels/1
  # PATCH/PUT /battlels/1.json
  def update
    respond_to do |format|
      if @battlel.update(battlel_params)
        if battlel_params[:winner] # si nos llega nombre de ganador le sumamos +1 a wins del pet q se llama asi
          petWin = Pet.find_by(name: battlel_params[:winner])
          petLose = Pet.find_by(name: battlel_params[:loser])
          petWin.update_attributes(wins: petWin.wins+1, battlels: petWin.battlels+1)
          petLose.update_attributes(battlels: petLose.battlels+1)
        end
        format.html { redirect_to @battlel, notice: 'Battlel was successfully updated.' }
        format.json { render :show, status: :ok, location: @battlel }
      else
        format.html { render :edit }
        format.json { render json: @battlel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battlels/1
  # DELETE /battlels/1.json
  def destroy
    @battlel.destroy
    respond_to do |format|
      format.html { redirect_to battlels_url, notice: 'Battlel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battlel
      @battlel = Battlel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battlel_params
      params.require(:battlel).permit(:pet1, :pet2, :date, :hour, :winner, :loser)
    end
end
