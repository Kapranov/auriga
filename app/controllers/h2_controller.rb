class H2Controller < ApplicationController
  before_action :set_h2, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate

  # GET /h2
  # GET /h2.json
  def index
    @h2 = H2.all
    @h2 = H2.search(params[:search], params[:page])
  end

  # GET /h2/1
  # GET /h2/1.json
  def show
  end

  # GET /h2/new
  def new
    @h2 = H2.new
  end

  # GET /h2/1/edit
  def edit
  end

  # POST /h2
  # POST /h2.json
  def create
    @h2 = H2.new(h2_params)

    respond_to do |format|
      if @h2.save
        format.html { redirect_to @h2, notice: 'H2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @h2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @h2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /h2/1
  # PATCH/PUT /h2/1.json
  def update
    respond_to do |format|
      if @h2.update(h2_params)
        format.html { redirect_to @h2, notice: 'H2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @h2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /h2/1
  # DELETE /h2/1.json
  def destroy
    @h2.destroy
    respond_to do |format|
      format.html { redirect_to h2_index_url }
      format.json { head :no_content }
    end
  end

  protected
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == CONFIG[:http_user] && password == CONFIG[:http_pwd]
      end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_h2
      @h2 = H2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def h2_params
      params.require(:h2).permit(:mac, :ip, :abon_id, :tp, :def_gw, :vlan, :netmask, :sw_port, :blocked, :comment)
    end
end
