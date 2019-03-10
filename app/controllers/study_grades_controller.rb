class StudyGradesController < ApplicationController
  before_action :set_study_grade, only: [:show, :edit, :update, :destroy]

  # GET /study_grades
  # GET /study_grades.json
  def index
    @study_grades = StudyGrade.all
  end

  # GET /study_grades/1
  # GET /study_grades/1.json
  def show
  end

  # GET /study_grades/new
  def new
    @study_grade = StudyGrade.new
  end

  # GET /study_grades/1/edit
  def edit
  end

  # POST /study_grades
  # POST /study_grades.json
  def create
    @study_grade = StudyGrade.new(study_grade_params)

    respond_to do |format|
      if @study_grade.save
        format.html { redirect_to @study_grade, notice: 'El Grado de Estudio ha sido creado exitosamente.' }
        format.json { render :show, status: :created, location: @study_grade }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :new }
        format.json { render json: @study_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_grades/1
  # PATCH/PUT /study_grades/1.json
  def update
    respond_to do |format|
      if @study_grade.update(study_grade_params)
        format.html { redirect_to @study_grade, notice: 'El Grado de Estudio ha sido actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @study_grade }
      else
        flash[:danger] = "No se ha podido Procesar la Operacion"
        format.html { render :edit }
        format.json { render json: @study_grade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_grades/1
  # DELETE /study_grades/1.json
  def destroy
    @study_grade.destroy
    respond_to do |format|
      format.html { redirect_to study_grades_url, notice: 'El Grado de Estudio ha sido eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_grade
      @study_grade = StudyGrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_grade_params
      params.require(:study_grade).permit(:name)
    end
end
