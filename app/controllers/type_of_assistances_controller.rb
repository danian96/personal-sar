class TypeOfAssistancesController < ApplicationController
  before_action :set_type_of_assistance, only: [:show, :edit, :update, :destroy]

  # GET /type_of_assistances
  # GET /type_of_assistances.json
  def index
    @type_of_assistances = TypeOfAssistance.all
  end

  # GET /type_of_assistances/1
  # GET /type_of_assistances/1.json
  def show
  end

  # GET /type_of_assistances/new
  def new
    @type_of_assistance = TypeOfAssistance.new
  end

  # GET /type_of_assistances/1/edit
  def edit
  end

  # POST /type_of_assistances
  # POST /type_of_assistances.json
  def create
    @type_of_assistance = TypeOfAssistance.new(type_of_assistance_params)

    respond_to do |format|
      if @type_of_assistance.save
        format.html { redirect_to @type_of_assistance, notice: 'El Tipo de Asistencia ha sido creado exitosamente.' }
        format.json { render :show, status: :created, location: @type_of_assistance }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :new }
        format.json { render json: @type_of_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_assistances/1
  # PATCH/PUT /type_of_assistances/1.json
  def update
    respond_to do |format|
      if @type_of_assistance.update(type_of_assistance_params)
        format.html { redirect_to @type_of_assistance, notice: 'El Tipo de Asistencia ha sido actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @type_of_assistance }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :edit }
        format.json { render json: @type_of_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_assistances/1
  # DELETE /type_of_assistances/1.json
  def destroy
    @type_of_assistance.destroy
    respond_to do |format|
      format.html { redirect_to type_of_assistances_url, notice: 'El Tipo de Asistencia ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_assistance
      @type_of_assistance = TypeOfAssistance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_assistance_params
      params.require(:type_of_assistance).permit(:name)
    end
end
