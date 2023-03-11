class TerapistsController < ApplicationController
  def new
    @terapist = Terapist.new
  end

  def create
    @terapists_params = params.require(:terapist).permit(:name, :medicalSpecialty)
    @terapist = Terapist.create(@terapists_params)
    if @terapist.save
      redirect_to terapists_index_path, notice: 'Terapeuta creado con éxito'
    else 
      redirect_to terapists_index_path, notice: 'Error en la creación de un terapeuta'
    end
  end

  def index
    @terapists = Terapist.all
  end

  def show
    @terapist = Terapist.find(params[:id])
  end

  def edit
    @terapist = Terapist.find(params[:id])
  end

  def update
  end

  def delete
    @terapist = Terapist.find(params[:id])
    @terapist.destroy
    redirect_to terapists_index_path, notice: 'Terapeuta eliminado con éxito'
  end
end
