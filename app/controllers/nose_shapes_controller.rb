class NoseShapesController < ApplicationController
  before_action :set_nose_shape, only: [:show, :edit, :update, :destroy]

  # GET /nose_shapes
  # GET /nose_shapes.json
  def index
    @nose_shapes = NoseShape.all
  end

  # GET /nose_shapes/1
  # GET /nose_shapes/1.json
  def show
  end

  # GET /nose_shapes/new
  def new
    @nose_shape = NoseShape.new
  end

  # GET /nose_shapes/1/edit
  def edit
  end

  # POST /nose_shapes
  # POST /nose_shapes.json
  def create
    @nose_shape = NoseShape.new(nose_shape_params)

    respond_to do |format|
      if @nose_shape.save
        format.html { redirect_to @nose_shape, notice: 'La Forma de Nariz ha sido creada exitosamente.' }
        format.json { render :show, status: :created, location: @nose_shape }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :new }
        format.json { render json: @nose_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nose_shapes/1
  # PATCH/PUT /nose_shapes/1.json
  def update
    respond_to do |format|
      if @nose_shape.update(nose_shape_params)
        format.html { redirect_to @nose_shape, notice: 'La Forma de Nariz ha sido actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @nose_shape }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :edit }
        format.json { render json: @nose_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nose_shapes/1
  # DELETE /nose_shapes/1.json
  def destroy
    @nose_shape.destroy
    respond_to do |format|
      format.html { redirect_to nose_shapes_url, notice: 'La Forma de Nariz ha sido eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nose_shape
      @nose_shape = NoseShape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nose_shape_params
      params.require(:nose_shape).permit(:name)
    end
end
