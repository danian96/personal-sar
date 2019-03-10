class SkinColorsController < ApplicationController
  before_action :set_skin_color, only: [:show, :edit, :update, :destroy]

  # GET /skin_colors
  # GET /skin_colors.json
  def index
    @skin_colors = SkinColor.all
  end

  # GET /skin_colors/1
  # GET /skin_colors/1.json
  def show
  end

  # GET /skin_colors/new
  def new
    @skin_color = SkinColor.new
  end

  # GET /skin_colors/1/edit
  def edit
  end

  # POST /skin_colors
  # POST /skin_colors.json
  def create
    @skin_color = SkinColor.new(skin_color_params)

    respond_to do |format|
      if @skin_color.save
        format.html { redirect_to @skin_color, notice: 'El Color de Piel ha sido creado exitosamente.' }
        format.json { render :show, status: :created, location: @skin_color }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :new }
        format.json { render json: @skin_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skin_colors/1
  # PATCH/PUT /skin_colors/1.json
  def update
    respond_to do |format|
      if @skin_color.update(skin_color_params)
        format.html { redirect_to @skin_color, notice: 'El Color de Piel ha sido actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @skin_color }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :edit }
        format.json { render json: @skin_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skin_colors/1
  # DELETE /skin_colors/1.json
  def destroy
    @skin_color.destroy
    respond_to do |format|
      format.html { redirect_to skin_colors_url, notice: 'El Color de Piel ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skin_color
      @skin_color = SkinColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skin_color_params
      params.require(:skin_color).permit(:name)
    end
end
