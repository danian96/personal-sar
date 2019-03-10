class TypeOfAssignmentsController < ApplicationController
  before_action :set_type_of_assignment, only: [:show, :edit, :update, :destroy]

  # GET /type_of_assignments
  # GET /type_of_assignments.json
  def index
    @type_of_assignments = TypeOfAssignment.all
  end

  # GET /type_of_assignments/1
  # GET /type_of_assignments/1.json
  def show
  end

  # GET /type_of_assignments/new
  def new
    @type_of_assignment = TypeOfAssignment.new
  end

  # GET /type_of_assignments/1/edit
  def edit
  end

  # POST /type_of_assignments
  # POST /type_of_assignments.json
  def create
    @type_of_assignment = TypeOfAssignment.new(type_of_assignment_params)

    respond_to do |format|
      if @type_of_assignment.save
        format.html { redirect_to @type_of_assignment, notice: 'El Tipo de Asignacion ha sido creado exitosamente.' }
        format.json { render :show, status: :created, location: @type_of_assignment }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :new }
        format.json { render json: @type_of_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_assignments/1
  # PATCH/PUT /type_of_assignments/1.json
  def update
    respond_to do |format|
      if @type_of_assignment.update(type_of_assignment_params)
        format.html { redirect_to @type_of_assignment, notice: 'El Tipo de Asignacion ha sido actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @type_of_assignment }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :edit }
        format.json { render json: @type_of_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_assignments/1
  # DELETE /type_of_assignments/1.json
  def destroy
    @type_of_assignment.destroy
    respond_to do |format|
      format.html { redirect_to type_of_assignments_url, notice: 'El Tipo de Asignacion ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_assignment
      @type_of_assignment = TypeOfAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_assignment_params
      params.require(:type_of_assignment).permit(:name)
    end
end
