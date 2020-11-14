class TestblogsController < ApplicationController
  before_action :set_testblog, only: [:show, :edit, :update, :destroy]

  # GET /testblogs
  # GET /testblogs.json
  def index
    @testblogs = Testblog.all
  end

  # GET /testblogs/1
  # GET /testblogs/1.json
  def show
  end

  # GET /testblogs/new
  def new
    @testblog = Testblog.new
  end

  # GET /testblogs/1/edit
  def edit
  end

  # POST /testblogs
  # POST /testblogs.json
  def create
    @testblog = Testblog.new(testblog_params)

    respond_to do |format|
      if @testblog.save
        format.html { redirect_to @testblog, notice: 'Testblog was successfully created.' }
        format.json { render :show, status: :created, location: @testblog }
      else
        format.html { render :new }
        format.json { render json: @testblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testblogs/1
  # PATCH/PUT /testblogs/1.json
  def update
    respond_to do |format|
      if @testblog.update(testblog_params)
        format.html { redirect_to @testblog, notice: 'Testblog was successfully updated.' }
        format.json { render :show, status: :ok, location: @testblog }
      else
        format.html { render :edit }
        format.json { render json: @testblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testblogs/1
  # DELETE /testblogs/1.json
  def destroy
    @testblog.destroy
    respond_to do |format|
      format.html { redirect_to testblogs_url, notice: 'Testblog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testblog
      @testblog = Testblog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testblog_params
      params.require(:testblog).permit(:Title, :Message, :Email)
    end
end
