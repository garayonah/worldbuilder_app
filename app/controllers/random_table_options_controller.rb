class RandomTableOptionsController < ApplicationController
  before_action :set_random_table_option, only: %i[ show edit update destroy ]

  # GET /random_table_options or /random_table_options.json
  def index
    @random_table_options = RandomTableOption.all
  end

  # GET /random_table_options/1 or /random_table_options/1.json
  def show
  end

  # GET /random_table_options/new
  def new
    @random_table_option = RandomTableOption.new
  end

  # GET /random_table_options/1/edit
  def edit
  end

  # POST /random_table_options or /random_table_options.json
  def create
    @random_table_option = RandomTableOption.new(random_table_option_params)

    respond_to do |format|
      if @random_table_option.save
        format.html { redirect_to @random_table_option, notice: "Random table option was successfully created." }
        format.json { render :show, status: :created, location: @random_table_option }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @random_table_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /random_table_options/1 or /random_table_options/1.json
  def update
    respond_to do |format|
      if @random_table_option.update(random_table_option_params)
        format.html { redirect_to @random_table_option, notice: "Random table option was successfully updated." }
        format.json { render :show, status: :ok, location: @random_table_option }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @random_table_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_table_options/1 or /random_table_options/1.json
  def destroy
    @random_table_option.destroy!

    respond_to do |format|
      format.html { redirect_to random_table_options_path, status: :see_other, notice: "Random table option was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_table_option
      @random_table_option = RandomTableOption.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def random_table_option_params
      params.expect(random_table_option: [ :random_table_id, :text, :option_start, :option_end ])
    end
end
