class MouthShapesController < ApplicationController
  before_action :set_mouth_shape, only: [:show, :edit, :update, :destroy]

  # GET /mouth_shapes
  # GET /mouth_shapes.json
  def index
    @mouth_shapes = MouthShape.all
  end

  # GET /mouth_shapes/1
  # GET /mouth_shapes/1.json
  def show
  end

  # GET /mouth_shapes/new
  def new
    @mouth_shape = MouthShape.new
  end

  # GET /mouth_shapes/1/edit
  def edit
  end

  # POST /mouth_shapes
  # POST /mouth_shapes.json
  def create
    @mouth_shape = MouthShape.new(mouth_shape_params)

    respond_to do |format|
      if @mouth_shape.save
        format.html { redirect_to @mouth_shape, notice: 'La Forma de Boca ha sido creada exitosamente.' }
        format.json { render :show, status: :created, location: @mouth_shape }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :new }
        format.json { render json: @mouth_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mouth_shapes/1
  # PATCH/PUT /mouth_shapes/1.json
  def update
    respond_to do |format|
      if @mouth_shape.update(mouth_shape_params)
        format.html { redirect_to @mouth_shape, notice: 'La Forma de Boca ha sido actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @mouth_shape }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :edit }
        format.json { render json: @mouth_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mouth_shapes/1
  # DELETE /mouth_shapes/1.json
  def destroy
    @mouth_shape.destroy
    respond_to do |format|
      format.html { redirect_to mouth_shapes_url, notice: 'La Forma de Boca ha sido eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mouth_shape
      @mouth_shape = MouthShape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mouth_shape_params
      params.require(:mouth_shape).permit(:name)
    end
end
