class RandomTablesController < ApplicationController
  before_action :set_random_table, only: %i[ show edit update destroy ]

  # GET /random_tables or /random_tables.json
  def index
    @random_tables = RandomTable.all
  end

  # GET /random_tables/1 or /random_tables/1.json
  def show
  end

  # GET /random_tables/new
  def new
    @random_table = RandomTable.new
  end

  # GET /random_tables/1/edit
  def edit
  end

  # POST /random_tables or /random_tables.json
  def create
    @random_table = RandomTable.new(random_table_params)

    respond_to do |format|
      if @random_table.save
        format.html { redirect_to @random_table, notice: "Random table was successfully created." }
        format.json { render :show, status: :created, location: @random_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @random_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /random_tables/1 or /random_tables/1.json
  def update
    respond_to do |format|
      if @random_table.update(random_table_params)
        format.html { redirect_to @random_table, notice: "Random table was successfully updated." }
        format.json { render :show, status: :ok, location: @random_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @random_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_tables/1 or /random_tables/1.json
  def destroy
    @random_table.destroy!

    respond_to do |format|
      format.html { redirect_to random_tables_path, status: :see_other, notice: "Random table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_table
      @random_table = RandomTable.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def random_table_params
      params.expect(random_table: [ :name, :description, :die ])
    end
end
