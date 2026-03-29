class PokedexController < ApplicationController
  before_action :set_pokedex, only: %i[ show edit update destroy ]

  # GET /pokedex or /pokedex.json
  def index
    @pokedex = Pokedex.all
  end

  # GET /pokedex/1 or /pokedex/1.json
  def show
  end

  # GET /pokedex/new
  def new
    @pokedex = Pokedex.new
  end

  # GET /pokedex/1/edit
  def edit
  end

  # POST /pokedex or /pokedex.json
  def create
    @pokedex = Pokedex.new(pokedex_params)

    respond_to do |format|
      if @pokedex.save
        format.html { redirect_to @pokedex, notice: "Pokedex was successfully created." }
        format.json { render :show, status: :created, location: @pokedex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pokedex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokedex/1 or /pokedex/1.json
  def update
    respond_to do |format|
      if @pokedex.update(pokedex_params)
        format.html { redirect_to @pokedex, notice: "Pokedex was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @pokedex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pokedex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokedex/1 or /pokedex/1.json
  def destroy
    @pokedex.destroy!

    respond_to do |format|
      format.html { redirect_to pokedex_index_path, notice: "Pokedex was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokedex
      @pokedex = Pokedex.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pokedex_params
      params.expect(pokedex: [ :pokedex_id, :name, :pk_type ])
    end
end
